#include "codegen.h"
#include <sstream>
#include <iomanip>
#include <cstring>
#include <unordered_set>
#include <map>

CodeGen::CodeGen() : stack_offset(0), label_counter(0) {}

static int alignTo(int value, int alignment) {
    return (value + alignment - 1) / alignment * alignment;
}

std::string CodeGen::newLabel() {
    return ".L" + std::to_string(label_counter++);
}

void CodeGen::emit(const std::string& line) {
    output += line + "\n";
}

void CodeGen::emitLabel(const std::string& label) {
    output += label + ":\n";
}

int CodeGen::getVariableOffset(const std::string& name) {
    auto it = variables.find(name);
    if (it != variables.end()) return it->second.offset;
    return -1;
}

bool CodeGen::isDynamicVariable(const std::string& name) {
    auto it = variables.find(name);
    if (it == variables.end()) return false;
    return it->second.dynamic;
}

void CodeGen::pushVariable(const std::string& name, bool dynamic) {
    if (variables.find(name) != variables.end()) return;
    VarInfo info;
    info.offset = stack_offset;
    info.dynamic = dynamic;
    variables[name] = info;
    stack_offset += dynamic ? 16 : 8;
}

std::string CodeGen::generate(const Program& program) {
    buildClassLayouts(program);

    // Generate code (this will collect string literals)
    genProgram(program);
    
    // Now build the final output with strings in data section
    std::string final_output;
    
    // Data section
    final_output += ".section .data\n";
    final_output += "fmt_int: .string \"%ld\"\n";
    final_output += "fmt_float: .string \"%f\"\n";
    final_output += "fmt_str: .string \"%s\"\n";
    final_output += "fmt_nl: .string \"\\n\"\n";
    
    // String literals
    for (size_t i = 0; i < string_literals.size(); i++) {
        final_output += "str_" + std::to_string(i) + ": .string \"" + string_literals[i] + "\"\n";
    }
    
    final_output += "\n.section .text\n";
    
    // Find and declare main function as global
    for (const auto& func : program.functions) {
        if (func->name == "main") {
            final_output += ".global main\n";
            break;
        }
    }
    
    final_output += output;
    
    return final_output;
}

static void collectLocalsFromExpr(const ExprPtr& expr, std::unordered_set<std::string>& locals);

struct LocalInfo {
    bool explicit_typed = false;
    bool dynamic = false;
};

static void markDynamicLocal(std::map<std::string, LocalInfo>& locals, const std::string& name) {
    auto& info = locals[name];
    if (!info.explicit_typed) info.dynamic = true;
}

static void markExplicitTypedLocal(std::map<std::string, LocalInfo>& locals, const std::string& name) {
    auto& info = locals[name];
    info.explicit_typed = true;
    // Strings need 16 bytes for heap pointer (like dynamic variables)
    // because txtin() returns a heap-allocated string
    info.dynamic = true;
}

static void collectLocalsInfoFromExpr(const ExprPtr& expr, std::map<std::string, LocalInfo>& locals);

static void collectLocalsInfoFromStmt(const StmtPtr& stmt, std::map<std::string, LocalInfo>& locals) {
    if (!stmt) return;

    switch (stmt->type) {
        case ASTNodeType::VARIABLE_DECL: {
            auto decl = std::dynamic_pointer_cast<VariableDecl>(stmt);
            if (!decl) break;

            // Check if initializer is txtin() - a string-returning function
            bool is_string_func = false;
            if (auto call = std::dynamic_pointer_cast<Call>(decl->initializer)) {
                is_string_func = (call->name == "txtin");
            }

            if (decl->is_explicit_type && decl->explicit_type != Type::UNKNOWN) {
                // Explicitly typed strings need 16 bytes for heap pointer
                markExplicitTypedLocal(locals, decl->name);
            } else if (is_string_func) {
                // txtin() returns a string, treat as dynamic
                markDynamicLocal(locals, decl->name);
            } else {
                markDynamicLocal(locals, decl->name);
            }

            collectLocalsInfoFromExpr(decl->initializer, locals);
            break;
        }
        case ASTNodeType::EXPRESSION_STMT: {
            auto expr_stmt = std::dynamic_pointer_cast<ExpressionStmt>(stmt);
            if (expr_stmt) collectLocalsInfoFromExpr(expr_stmt->expression, locals);
            break;
        }
        case ASTNodeType::IF_STMT: {
            auto if_stmt = std::dynamic_pointer_cast<IfStmt>(stmt);
            if (if_stmt) {
                collectLocalsInfoFromExpr(if_stmt->condition, locals);
                collectLocalsInfoFromStmt(if_stmt->then_branch, locals);
                collectLocalsInfoFromStmt(if_stmt->else_branch, locals);
            }
            break;
        }
        case ASTNodeType::WHILE_STMT: {
            auto while_stmt = std::dynamic_pointer_cast<WhileStmt>(stmt);
            if (while_stmt) {
                collectLocalsInfoFromExpr(while_stmt->condition, locals);
                collectLocalsInfoFromStmt(while_stmt->body, locals);
            }
            break;
        }
        case ASTNodeType::FOR_STMT: {
            auto for_stmt = std::dynamic_pointer_cast<ForStmt>(stmt);
            if (for_stmt) {
                collectLocalsInfoFromStmt(for_stmt->initializer, locals);
                collectLocalsInfoFromExpr(for_stmt->condition, locals);
                collectLocalsInfoFromExpr(for_stmt->increment, locals);
                collectLocalsInfoFromStmt(for_stmt->body, locals);
            }
            break;
        }
        case ASTNodeType::RETURN_STMT: {
            auto ret_stmt = std::dynamic_pointer_cast<ReturnStmt>(stmt);
            if (ret_stmt) collectLocalsInfoFromExpr(ret_stmt->value, locals);
            break;
        }
        case ASTNodeType::BLOCK: {
            auto block = std::dynamic_pointer_cast<Block>(stmt);
            if (block) {
                for (const auto& s : block->statements) collectLocalsInfoFromStmt(s, locals);
            }
            break;
        }
        default:
            break;
    }
}

static void collectLocalsInfoFromExpr(const ExprPtr& expr, std::map<std::string, LocalInfo>& locals) {
    if (!expr) return;

    switch (expr->type) {
        case ASTNodeType::BINARY_OP: {
            auto bin = std::dynamic_pointer_cast<BinaryOp>(expr);
            if (!bin) break;
            if (bin->op == TokenType::IS) {
                if (auto var = std::dynamic_pointer_cast<Variable>(bin->left)) {
                    // Check if right side is txtin() - a string-returning function
                    bool is_string_func = false;
                    if (auto call = std::dynamic_pointer_cast<Call>(bin->right)) {
                        is_string_func = (call->name == "txtin");
                    }
                    if (is_string_func) {
                        markExplicitTypedLocal(locals, var->name);
                    } else {
                        markDynamicLocal(locals, var->name);
                    }
                } else {
                    collectLocalsInfoFromExpr(bin->left, locals);
                }
                collectLocalsInfoFromExpr(bin->right, locals);
            } else {
                collectLocalsInfoFromExpr(bin->left, locals);
                collectLocalsInfoFromExpr(bin->right, locals);
            }
            break;
        }
        case ASTNodeType::UNARY_OP: {
            auto un = std::dynamic_pointer_cast<UnaryOp>(expr);
            if (un) collectLocalsInfoFromExpr(un->operand, locals);
            break;
        }
        case ASTNodeType::DEREF: {
            auto dr = std::dynamic_pointer_cast<DerefExpr>(expr);
            if (dr) collectLocalsInfoFromExpr(dr->pointer, locals);
            break;
        }
        case ASTNodeType::CALL: {
            auto call = std::dynamic_pointer_cast<Call>(expr);
            if (call) {
                for (const auto& arg : call->arguments) collectLocalsInfoFromExpr(arg, locals);
            }
            break;
        }
        case ASTNodeType::ARRAY_ACCESS: {
            auto acc = std::dynamic_pointer_cast<ArrayAccess>(expr);
            if (acc) collectLocalsInfoFromExpr(acc->index, locals);
            break;
        }
        default:
            break;
    }
}

static void collectLocalsFromStmt(const StmtPtr& stmt, std::unordered_set<std::string>& locals) {
    if (!stmt) return;

    switch (stmt->type) {
        case ASTNodeType::VARIABLE_DECL: {
            auto decl = std::dynamic_pointer_cast<VariableDecl>(stmt);
            if (decl) locals.insert(decl->name);
            if (decl && decl->initializer) collectLocalsFromExpr(decl->initializer, locals);
            break;
        }
        case ASTNodeType::EXPRESSION_STMT: {
            auto expr_stmt = std::dynamic_pointer_cast<ExpressionStmt>(stmt);
            if (expr_stmt) collectLocalsFromExpr(expr_stmt->expression, locals);
            break;
        }
        case ASTNodeType::IF_STMT: {
            auto if_stmt = std::dynamic_pointer_cast<IfStmt>(stmt);
            if (if_stmt) {
                collectLocalsFromExpr(if_stmt->condition, locals);
                collectLocalsFromStmt(if_stmt->then_branch, locals);
                collectLocalsFromStmt(if_stmt->else_branch, locals);
            }
            break;
        }
        case ASTNodeType::WHILE_STMT: {
            auto while_stmt = std::dynamic_pointer_cast<WhileStmt>(stmt);
            if (while_stmt) {
                collectLocalsFromExpr(while_stmt->condition, locals);
                collectLocalsFromStmt(while_stmt->body, locals);
            }
            break;
        }
        case ASTNodeType::FOR_STMT: {
            auto for_stmt = std::dynamic_pointer_cast<ForStmt>(stmt);
            if (for_stmt) {
                collectLocalsFromStmt(for_stmt->initializer, locals);
                collectLocalsFromExpr(for_stmt->condition, locals);
                collectLocalsFromExpr(for_stmt->increment, locals);
                collectLocalsFromStmt(for_stmt->body, locals);
            }
            break;
        }
        case ASTNodeType::RETURN_STMT: {
            auto ret_stmt = std::dynamic_pointer_cast<ReturnStmt>(stmt);
            if (ret_stmt) collectLocalsFromExpr(ret_stmt->value, locals);
            break;
        }
        case ASTNodeType::BLOCK: {
            auto block = std::dynamic_pointer_cast<Block>(stmt);
            if (block) {
                for (const auto& s : block->statements) collectLocalsFromStmt(s, locals);
            }
            break;
        }
        default:
            break;
    }
}

static void collectLocalsFromExpr(const ExprPtr& expr, std::unordered_set<std::string>& locals) {
    if (!expr) return;

    switch (expr->type) {
        case ASTNodeType::BINARY_OP: {
            auto bin = std::dynamic_pointer_cast<BinaryOp>(expr);
            if (!bin) break;
            if (bin->op == TokenType::IS) {
                if (auto var = std::dynamic_pointer_cast<Variable>(bin->left)) {
                    locals.insert(var->name);
                } else {
                    collectLocalsFromExpr(bin->left, locals);
                }
                collectLocalsFromExpr(bin->right, locals);
            } else {
                collectLocalsFromExpr(bin->left, locals);
                collectLocalsFromExpr(bin->right, locals);
            }
            break;
        }
        case ASTNodeType::UNARY_OP: {
            auto un = std::dynamic_pointer_cast<UnaryOp>(expr);
            if (un) collectLocalsFromExpr(un->operand, locals);
            break;
        }
        case ASTNodeType::CALL: {
            auto call = std::dynamic_pointer_cast<Call>(expr);
            if (call) {
                for (const auto& arg : call->arguments) collectLocalsFromExpr(arg, locals);
            }
            break;
        }
        case ASTNodeType::ARRAY_ACCESS: {
            auto acc = std::dynamic_pointer_cast<ArrayAccess>(expr);
            if (acc) collectLocalsFromExpr(acc->index, locals);
            break;
        }
        default:
            break;
    }
}

void CodeGen::genProgram(const Program& program) {
    genRuntimeHelpers();

    // Emit allocator helpers for classes first so they can be called anywhere.
    genClassAllocators(program);
    genClassCopiers(program);

    for (const auto& cls : program.classes) {
        if (!cls) continue;
        for (const auto& m : cls->methods) genFunction(*m);
    }
    for (const auto& func : program.functions) {
        genFunction(*func);
    }
}

void CodeGen::genRuntimeHelpers() {
    // Use unlikely symbol names so user code can define `exit`, `free`, etc safely.
    emitLabel("__zinc_rt_exit");
    // Use `_exit` to avoid symbol collision with user-defined `exit()`.
    // `_exit` doesn't flush stdio, so explicitly flush all streams first.
    emit("    movq %rdi, %rbx");   // save exit code
    emit("    xorq %rdi, %rdi");   // fflush(NULL)
    emit("    call fflush@PLT");
    emit("    movq %rbx, %rdi");   // restore exit code
    emit("    call _exit@PLT");
    emit("");

    emitLabel("__zinc_rt_free");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call free@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_malloc");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call malloc@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_memset");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call memset@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_memcpy");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call memcpy@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_strcmp");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call strcmp@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_strdup");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call strdup@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_printf");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call printf@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_fgets");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call fgets@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");

    emitLabel("__zinc_rt_strlen");
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");
    emit("    call strlen@PLT");
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");
}

void CodeGen::buildClassLayouts(const Program& program) {
    class_layouts.clear();
    for (const auto& cls : program.classes) {
        if (!cls) continue;
        ClassLayout layout;
        int off = 0;
        for (const auto& [field_name, field_type] : cls->fields) {
            (void)field_type;
            layout.field_offsets[field_name] = off;
            off += 8; // currently every field is 8 bytes
        }
        layout.size_bytes = off;
        class_layouts[cls->name] = layout;
    }
}

void CodeGen::genClassAllocators(const Program& program) {
    for (const auto& cls : program.classes) {
        if (!cls) continue;
        auto it = class_layouts.find(cls->name);
        int size = (it == class_layouts.end()) ? 0 : it->second.size_bytes;
        std::string fn = "__zn_new_" + cls->name;

        emitLabel(fn);
        emit("    pushq %rbp");
        emit("    movq %rsp, %rbp");

        emit("    movq $" + std::to_string(size) + ", %rdi");
        emit("    call __zinc_rt_malloc");

        if (size > 0) {
            emit("    movq %rax, %r12"); // save pointer
            emit("    movq %rax, %rdi"); // ptr
            emit("    xorl %esi, %esi"); // value = 0
            emit("    movq $" + std::to_string(size) + ", %rdx"); // size
            emit("    call __zinc_rt_memset");
            emit("    movq %r12, %rax");
        }

        emit("    movq %rbp, %rsp");
        emit("    popq %rbp");
        emit("    retq");
        emit("");
    }
}

void CodeGen::genClassCopiers(const Program& program) {
    for (const auto& cls : program.classes) {
        if (!cls) continue;
        auto it = class_layouts.find(cls->name);
        int size = (it == class_layouts.end()) ? 0 : it->second.size_bytes;
        std::string fn = "__zn_copy_" + cls->name;

        emitLabel(fn);
        emit("    pushq %rbp");
        emit("    movq %rsp, %rbp");

        // arg0: source pointer in %rdi
        emit("    movq %rdi, %r12"); // src

        emit("    movq $" + std::to_string(size) + ", %rdi");
        emit("    call __zinc_rt_malloc");
        emit("    movq %rax, %r13"); // dst

        if (size > 0) {
            emit("    movq %r13, %rdi"); // dst
            emit("    movq %r12, %rsi"); // src
            emit("    movq $" + std::to_string(size) + ", %rdx");
            emit("    call __zinc_rt_memcpy");
        }

        emit("    movq %r13, %rax");
        emit("    movq %rbp, %rsp");
        emit("    popq %rbp");
        emit("    retq");
        emit("");
    }
}

void CodeGen::genFunction(const Function& func) {
    // Clear variable map for function scope
    variables.clear();
    stack_offset = 0;
    current_function_end_label = newLabel();
    
    emitLabel(func.name);
    
    // Function prologue
    emit("    pushq %rbp");
    emit("    movq %rsp, %rbp");

    // Allocate space for locals (and parameters) up-front so they survive across calls.
    std::map<std::string, LocalInfo> locals;
    for (const auto& p : func.parameters) {
        // Parameters are currently treated as fixed 8-byte slots.
        // (Dynamic variables are only for local inference.)
        locals[p.first] = LocalInfo{.explicit_typed = true, .dynamic = false};
    }
    for (const auto& stmt : func.body) collectLocalsInfoFromStmt(stmt, locals);

    // Pre-assign stack slots in a deterministic order so we can safely
    // support dynamic variables that take 16 bytes (value + tag).
    for (const auto& [name, info] : locals) {
        pushVariable(name, info.dynamic);
    }

    int local_bytes = alignTo(stack_offset, 16);
    if (local_bytes > 0) {
        emit("    subq $" + std::to_string(local_bytes) + ", %rsp");
    }

    // Spill incoming arguments to their stack slots so `Variable` lookups work.
    // System V AMD64: rdi, rsi, rdx, rcx, r8, r9.
    static const char* arg_regs[] = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
    for (size_t i = 0; i < func.parameters.size() && i < 6; i++) {
        const std::string& name = func.parameters[i].first;
        int offset = getVariableOffset(name);
        if (offset >= 0) {
            emit("    movq " + std::string(arg_regs[i]) + ", -" + std::to_string(offset + 8) + "(%rbp)");
        }
    }
    
    // Function body
    genBlockStatements(func.body);
    
    // Fallthrough return value.
    if (func.return_type == Type::INT) emit("    xorq %rax, %rax");
    else emit("    xorq %rax, %rax");

    emit("    jmp " + current_function_end_label);

    // Best-effort cleanup for dynamic locals: free owned heap values (strings/objects)
    // that haven't been freed manually.
    emitLabel(current_function_end_label);
    for (const auto& [name, info] : variables) {
        if (!info.dynamic) continue;
        int offset = info.offset;
        if (offset < 0) continue;

        std::string do_free = newLabel();
        std::string done = newLabel();
        emit("    movq -" + std::to_string(offset + 16) + "(%rbp), %rbx"); // tag
        emit("    cmpq $2, %rbx");
        emit("    je " + do_free);
        emit("    cmpq $4, %rbx");
        emit("    je " + do_free);
        emit("    jmp " + done);
        emitLabel(do_free);
        emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rdi"); // ptr
        emit("    subq $8, %rsp");
        emit("    call __zinc_rt_free");
        emit("    addq $8, %rsp");
        // mark as non-owning/cleared
        emit("    xorq %rax, %rax");
        emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
        emit("    movq $1, -" + std::to_string(offset + 16) + "(%rbp)");
        emitLabel(done);
    }
    
    // Function epilogue
    emit("    movq %rbp, %rsp");
    emit("    popq %rbp");
    emit("    retq");
    emit("");
}

void CodeGen::genBlockStatements(const std::vector<StmtPtr>& statements) {
    for (const auto& stmt : statements) {
        genStatement(stmt);
    }
}

void CodeGen::genStatement(const StmtPtr& stmt) {
    if (!stmt) return;
    
    switch (stmt->type) {
        case ASTNodeType::VARIABLE_DECL: {
            auto decl = std::dynamic_pointer_cast<VariableDecl>(stmt);
            genVariableDecl(decl);
            break;
        }
        case ASTNodeType::EXPRESSION_STMT: {
            auto expr_stmt = std::dynamic_pointer_cast<ExpressionStmt>(stmt);
            genExpressionStmt(expr_stmt);
            break;
        }
        case ASTNodeType::IF_STMT: {
            auto if_stmt = std::dynamic_pointer_cast<IfStmt>(stmt);
            genIfStmt(if_stmt);
            break;
        }
        case ASTNodeType::WHILE_STMT: {
            auto while_stmt = std::dynamic_pointer_cast<WhileStmt>(stmt);
            genWhileStmt(while_stmt);
            break;
        }
        case ASTNodeType::FOR_STMT: {
            auto for_stmt = std::dynamic_pointer_cast<ForStmt>(stmt);
            genForStmt(for_stmt);
            break;
        }
        case ASTNodeType::RETURN_STMT: {
            auto ret_stmt = std::dynamic_pointer_cast<ReturnStmt>(stmt);
            genReturnStmt(ret_stmt);
            break;
        }
        case ASTNodeType::BREAK_STMT: {
            auto brk = std::dynamic_pointer_cast<BreakStmt>(stmt);
            genBreakStmt(brk);
            break;
        }
        case ASTNodeType::CONTINUE_STMT: {
            auto cont = std::dynamic_pointer_cast<ContinueStmt>(stmt);
            genContinueStmt(cont);
            break;
        }
        case ASTNodeType::BLOCK: {
            auto block = std::dynamic_pointer_cast<Block>(stmt);
            genBlock(block);
            break;
        }
        case ASTNodeType::ASM_STMT: {
            auto as = std::dynamic_pointer_cast<AsmStmt>(stmt);
            genAsmStmt(as);
            break;
        }
        default:
            break;
    }
}

void CodeGen::genAsmStmt(const std::shared_ptr<AsmStmt>& stmt) {
    if (!stmt) return;
    // Emit Intel-syntax inline assembly. This is a raw escape hatch.
    emit("    .intel_syntax noprefix");
    std::istringstream iss(stmt->asm_text);
    std::string line;
    while (std::getline(iss, line)) {
        if (line.empty()) continue;
        emit("    " + line);
    }
    emit("    .att_syntax prefix");
}

void CodeGen::genVariableDecl(const std::shared_ptr<VariableDecl>& decl) {
    int offset = getVariableOffset(decl->name);
    bool dynamic = isDynamicVariable(decl->name);
    
    // Special-case: copying from a dynamic string variable should copy the string,
    // otherwise printing and lifetime become incorrect.
    if (dynamic) {
        if (auto rhs_var = std::dynamic_pointer_cast<Variable>(decl->initializer);
            rhs_var && isDynamicVariable(rhs_var->name)) {
            int rhs_off = getVariableOffset(rhs_var->name);
            if (rhs_off >= 0 && offset >= 0) {
                std::string owned_string = newLabel();
                std::string owned_object = newLabel();
                std::string not_owned = newLabel();
                std::string done = newLabel();

                emit("    movq -" + std::to_string(rhs_off + 16) + "(%rbp), %rbx"); // rhs tag
                emit("    cmpq $2, %rbx");
                emit("    je " + owned_string);
                emit("    cmpq $4, %rbx");
                emit("    je " + owned_object);
                emit("    jmp " + not_owned);

                // Owned heap string: strdup it so both vars don't alias/free each other.
                emitLabel(owned_string);
                emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rdi"); // rhs ptr
                emit("    subq $8, %rsp");
                emit("    call __zinc_rt_strdup");
                emit("    addq $8, %rsp");
                emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                emit("    movq $2, -" + std::to_string(offset + 16) + "(%rbp)");
                emit("    jmp " + done);

                // Owned heap object: pointer alias, but do NOT transfer ownership.
                emitLabel(owned_object);
                emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rax");
                emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                emit("    movq $1, -" + std::to_string(offset + 16) + "(%rbp)");
                emit("    jmp " + done);

                // Not owned: copy pointer/value and tag through.
                emitLabel(not_owned);
                emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rax");
                emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                emit("    movq %rbx, -" + std::to_string(offset + 16) + "(%rbp)");
                emitLabel(done);
                return;
            }
        }
    }

    if (decl->initializer) {
        genExpression(decl->initializer);
    } else {
        emit("    xorq %rax, %rax");  // Default to 0
    }

    // Always store to stack
    if (offset >= 0) {
        emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
        if (dynamic) {
            // Tag:
            // 1 = non-owning scalar/ptr (printed as int)
            // 2 = owned heap string (free on overwrite)
            // 3 = non-owned static string (string literal; never free)
            // 4 = owned heap object pointer (free on overwrite)
            int tag = 1;
            if (auto call = std::dynamic_pointer_cast<Call>(decl->initializer)) {
                if (call->name == "txtin") tag = 2;
                else if (call->name == "copy" && !call->arguments.empty() &&
                         call->arguments[0] && call->arguments[0]->inferred_type == Type::STRING) {
                    tag = 2;
                } else if (call->name.rfind("__zn_new_", 0) == 0 || call->name.rfind("__zn_copy_", 0) == 0) {
                    tag = 4;
                }
            } else if (std::dynamic_pointer_cast<StringLiteral>(decl->initializer)) {
                tag = 3;
            }
            emit("    movq $" + std::to_string(tag) + ", -" + std::to_string(offset + 16) + "(%rbp)");
        }
    }
}

void CodeGen::genIfStmt(const std::shared_ptr<IfStmt>& stmt) {
    std::string else_label = newLabel();
    std::string end_label = newLabel();
    
    genExpression(stmt->condition);
    emit("    testq %rax, %rax");
    emit("    jz " + else_label);
    
    genStatement(stmt->then_branch);
    emit("    jmp " + end_label);
    
    if (stmt->else_branch) {
        emitLabel(else_label);
        genStatement(stmt->else_branch);
    } else {
        emitLabel(else_label);
    }
    
    emitLabel(end_label);
}

void CodeGen::genWhileStmt(const std::shared_ptr<WhileStmt>& stmt) {
    std::string loop_label = newLabel();
    std::string end_label = newLabel();
    std::string continue_label = loop_label;
    
    loop_stack.push_back({end_label, continue_label});
    
    emitLabel(loop_label);
    genExpression(stmt->condition);
    emit("    testq %rax, %rax");
    emit("    jz " + end_label);
    
    genStatement(stmt->body);
    emit("    jmp " + loop_label);
    
    emitLabel(end_label);
    
    loop_stack.pop_back();
}

void CodeGen::genForStmt(const std::shared_ptr<ForStmt>& stmt) {
    std::string loop_label = newLabel();
    std::string end_label = newLabel();
    std::string continue_label = newLabel();
    
    loop_stack.push_back({end_label, continue_label});
    
    // Initializer
    if (stmt->initializer) {
        genStatement(stmt->initializer);
    }
    
    emitLabel(loop_label);
    
    // Condition
    if (stmt->condition) {
        genExpression(stmt->condition);
        emit("    testq %rax, %rax");
        emit("    jz " + end_label);
    }
    
    // Body
    genStatement(stmt->body);
    
    // Continue label
    emitLabel(continue_label);
    
    // Increment
    if (stmt->increment) {
        genExpression(stmt->increment);
    }
    
    emit("    jmp " + loop_label);
    emitLabel(end_label);
    
    loop_stack.pop_back();
}

void CodeGen::genReturnStmt(const std::shared_ptr<ReturnStmt>& stmt) {
    if (stmt->value) {
        genExpression(stmt->value);
    } else {
        emit("    xorq %rax, %rax");
    }

    // Jump to unified function epilogue so cleanup runs even on early returns.
    emit("    jmp " + current_function_end_label);
}

void CodeGen::genBreakStmt(const std::shared_ptr<BreakStmt>&) {
    if (!loop_stack.empty()) {
        emit("    jmp " + loop_stack.back().first);
    }
}

void CodeGen::genContinueStmt(const std::shared_ptr<ContinueStmt>&) {
    if (!loop_stack.empty()) {
        emit("    jmp " + loop_stack.back().second);
    }
}

void CodeGen::genExpressionStmt(const std::shared_ptr<ExpressionStmt>& stmt) {
    genExpression(stmt->expression);
}

void CodeGen::genBlock(const std::shared_ptr<Block>& stmt) {
    genBlockStatements(stmt->statements);
}

void CodeGen::genExpression(const ExprPtr& expr) {
    if (!expr) return;
    
    switch (expr->type) {
        case ASTNodeType::BINARY_OP: {
            auto binop = std::dynamic_pointer_cast<BinaryOp>(expr);
            genBinaryOp(binop);
            break;
        }
        case ASTNodeType::UNARY_OP: {
            auto unop = std::dynamic_pointer_cast<UnaryOp>(expr);
            genUnaryOp(unop);
            break;
        }
        case ASTNodeType::CALL: {
            auto call = std::dynamic_pointer_cast<Call>(expr);
            genCall(call);
            break;
        }
        case ASTNodeType::ARRAY_ACCESS: {
            auto acc = std::dynamic_pointer_cast<ArrayAccess>(expr);
            if (!acc) break;

            // Load base pointer from variable slot.
            int base_off = getVariableOffset(acc->name);
            if (base_off < 0) {
                emit("    xorq %rax, %rax");
                break;
            }

            // rax = base pointer
            emit("    movq -" + std::to_string(base_off + 8) + "(%rbp), %rax");
            emit("    pushq %rax");
            genExpression(acc->index); // index in rax
            emit("    movq %rax, %rcx");
            emit("    popq %rax");     // base in rax

            // element address = base + index*8, then load element pointer/value.
            emit("    leaq (%rax,%rcx,8), %rax");
            emit("    movq (%rax), %rax");
            break;
        }
        case ASTNodeType::MEMBER_ACCESS:
        case ASTNodeType::PTR_MEMBER_ACCESS: {
            auto mem = std::dynamic_pointer_cast<MemberAccessExpr>(expr);
            if (!mem) break;
            if (mem->resolved_class.empty()) {
                throw std::runtime_error("Member access requires a known class type (bind via obj is Class())");
            }
            auto it = class_layouts.find(mem->resolved_class);
            if (it == class_layouts.end()) {
                throw std::runtime_error("Unknown class layout: " + mem->resolved_class);
            }
            auto fit = it->second.field_offsets.find(mem->field);
            if (fit == it->second.field_offsets.end()) {
                throw std::runtime_error("Unknown field '" + mem->field + "' on class " + mem->resolved_class);
            }
            int off = fit->second;
            genExpression(mem->base); // pointer in rax
            emit("    movq " + std::to_string(off) + "(%rax), %rax");
            break;
        }
        case ASTNodeType::VARIABLE: {
            auto var = std::dynamic_pointer_cast<Variable>(expr);
            genVariable(var);
            break;
        }
        case ASTNodeType::NUMBER_LITERAL: {
            auto num = std::dynamic_pointer_cast<NumberLiteral>(expr);
            genNumberLiteral(num);
            break;
        }
        case ASTNodeType::FLOAT_LITERAL: {
            auto flt = std::dynamic_pointer_cast<FloatLiteral>(expr);
            genFloatLiteral(flt);
            break;
        }
        case ASTNodeType::STRING_LITERAL: {
            auto str = std::dynamic_pointer_cast<StringLiteral>(expr);
            genStringLiteral(str);
            break;
        }
        case ASTNodeType::BOOL_LITERAL: {
            auto bl = std::dynamic_pointer_cast<BoolLiteral>(expr);
            genBoolLiteral(bl);
            break;
        }
        case ASTNodeType::ADDRESS_OF: {
            auto addr = std::dynamic_pointer_cast<AddressOfExpr>(expr);
            if (addr) {
                int offset = getVariableOffset(addr->variable_name);
                if (offset >= 0) {
                    emit("    leaq -" + std::to_string(offset + 8) + "(%rbp), %rax");
                } else {
                    emit("    xorq %rax, %rax");
                }
            }
            break;
        }
        case ASTNodeType::DEREF: {
            auto deref = std::dynamic_pointer_cast<DerefExpr>(expr);
            if (deref) {
                genExpression(deref->pointer);
                emit("    movq (%rax), %rax");
            }
            break;
        }
        case ASTNodeType::NULLPTR_LITERAL: {
            emit("    xorq %rax, %rax");
            break;
        }
        default:
            break;
    }
}

void CodeGen::genBinaryOp(const std::shared_ptr<BinaryOp>& expr) {
    // String equality/inequality via strcmp when both sides are typed as string.
    if (expr->op == TokenType::EQUAL_EQUAL || expr->op == TokenType::NOT_EQUAL) {
        if (expr->left && expr->right &&
            expr->left->inferred_type == Type::STRING &&
            expr->right->inferred_type == Type::STRING) {
            genExpression(expr->left);   // rax = left ptr
            emit("    pushq %rax");
            genExpression(expr->right);  // rax = right ptr
            emit("    movq %rax, %rsi");
            emit("    popq %rdi");

            // Ensure 16-byte stack alignment at call time.
            emit("    subq $8, %rsp");
            emit("    call __zinc_rt_strcmp");
            emit("    addq $8, %rsp");

            emit("    testl %eax, %eax");
            if (expr->op == TokenType::EQUAL_EQUAL) {
                emit("    sete %al");
            } else {
                emit("    setne %al");
            }
            emit("    movzbl %al, %eax");
            return;
        }
    }

    // Handle assignment specially
    if (expr->op == TokenType::IS) {
        if (auto var = std::dynamic_pointer_cast<Variable>(expr->left)) {
            int offset = getVariableOffset(var->name);
            bool dyn = isDynamicVariable(var->name);
            if (offset >= 0) {
                // If RHS is a dynamic var containing an owned string, strdup it to avoid aliasing.
                if (dyn) {
                    if (auto rhs_var = std::dynamic_pointer_cast<Variable>(expr->right);
                        rhs_var && isDynamicVariable(rhs_var->name)) {
                        int rhs_off = getVariableOffset(rhs_var->name);
                        if (rhs_off >= 0) {
                            // Free old value if needed before overwrite.
                            emit("    movq -" + std::to_string(offset + 16) + "(%rbp), %rbx"); // old tag
                            emit("    cmpq $2, %rbx");
                            std::string skip_free = newLabel();
                            emit("    jne " + skip_free);
                            emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rdi"); // old ptr
                            emit("    subq $8, %rsp");
                            emit("    call __zinc_rt_free");
                            emit("    addq $8, %rsp");
                            emitLabel(skip_free);

                            // Now assign from rhs.
                            std::string owned_string = newLabel();
                            std::string owned_object = newLabel();
                            std::string not_owned = newLabel();
                            std::string done = newLabel();
                            emit("    movq -" + std::to_string(rhs_off + 16) + "(%rbp), %rbx"); // rhs tag
                            emit("    cmpq $2, %rbx");
                            emit("    je " + owned_string);
                            emit("    cmpq $4, %rbx");
                            emit("    je " + owned_object);
                            emit("    jmp " + not_owned);

                            emitLabel(owned_string);
                            emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rdi"); // rhs ptr
                            emit("    subq $8, %rsp");
                            emit("    call __zinc_rt_strdup");
                            emit("    addq $8, %rsp");
                            emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                            emit("    movq $2, -" + std::to_string(offset + 16) + "(%rbp)");
                            emit("    jmp " + done);

                            // Owned object: alias pointer but do not take ownership.
                            emitLabel(owned_object);
                            emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rax");
                            emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                            emit("    movq $1, -" + std::to_string(offset + 16) + "(%rbp)");
                            emit("    jmp " + done);

                            emitLabel(not_owned);
                            emit("    movq -" + std::to_string(rhs_off + 8) + "(%rbp), %rax");
                            emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                            emit("    movq %rbx, -" + std::to_string(offset + 16) + "(%rbp)");
                            emitLabel(done);
                            return;
                        }
                    }
                }

                // General RHS expression path.
                genExpression(expr->right);

                // For dynamic vars, free owned heap values when overwriting.
                if (dyn) {
                    emit("    pushq %rax"); // save new value
                    emit("    movq -" + std::to_string(offset + 16) + "(%rbp), %rbx"); // old tag
                    emit("    cmpq $2, %rbx");
                    std::string check_object = newLabel();
                    std::string do_free = newLabel();
                    std::string skip_free = newLabel();
                    emit("    je " + do_free);
                    emit("    jmp " + check_object);
                    emitLabel(check_object);
                    emit("    cmpq $4, %rbx");
                    emit("    je " + do_free);
                    emit("    jmp " + skip_free);
                    emitLabel(do_free);
                    emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rdi"); // old ptr
                    // maintain 16-byte alignment at call site
                    emit("    subq $8, %rsp");
                    emit("    call __zinc_rt_free");
                    emit("    addq $8, %rsp");
                    emitLabel(skip_free);
                    emit("    popq %rax"); // restore new value
                }

                emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                // If this variable was allocated as dynamic (16 bytes), maintain a
                // simple runtime tag: 1=non-owning, 2=owned heap string, 3=static string.
                if (dyn) {
                    int tag = 1;
                    if (auto call = std::dynamic_pointer_cast<Call>(expr->right)) {
                        if (call->name == "txtin") tag = 2;
                        else if (call->name == "copy" && !call->arguments.empty() &&
                                 call->arguments[0] && call->arguments[0]->inferred_type == Type::STRING) {
                            tag = 2;
                        } else if (call->name.rfind("__zn_new_", 0) == 0 || call->name.rfind("__zn_copy_", 0) == 0) {
                            tag = 4;
                        }
                    } else if (std::dynamic_pointer_cast<StringLiteral>(expr->right)) {
                        tag = 3;
                    }
                    emit("    movq $" + std::to_string(tag) + ", -" + std::to_string(offset + 16) + "(%rbp)");
                }
            }
            return;
        }
        if (auto mem = std::dynamic_pointer_cast<MemberAccessExpr>(expr->left)) {
            if (mem->resolved_class.empty()) {
                throw std::runtime_error("Member assignment requires a known class type (bind via obj is Class())");
            }
            auto it = class_layouts.find(mem->resolved_class);
            if (it == class_layouts.end()) {
                throw std::runtime_error("Unknown class layout: " + mem->resolved_class);
            }
            auto fit = it->second.field_offsets.find(mem->field);
            if (fit == it->second.field_offsets.end()) {
                throw std::runtime_error("Unknown field '" + mem->field + "' on class " + mem->resolved_class);
            }
            int off = fit->second;

            genExpression(mem->base); // base pointer in rax
            emit("    pushq %rax");
            genExpression(expr->right); // value in rax
            emit("    popq %rbx"); // base pointer
            emit("    movq %rax, " + std::to_string(off) + "(%rbx)");
            return;
        }
        if (auto deref = std::dynamic_pointer_cast<DerefExpr>(expr->left)) {
            genExpression(deref->pointer); // address in rax
            emit("    pushq %rax");
            genExpression(expr->right);    // value in rax
            emit("    popq %rbx");
            emit("    movq %rax, (%rbx)");
            return;
        }
    }
    
    // For other binary operations
    genExpression(expr->left);
    emit("    pushq %rax");    // Save left result
    genExpression(expr->right);
    emit("    movq %rax, %rbx"); // Right result in rbx
    emit("    popq %rax");      // Restore left result
    
    switch (expr->op) {
        case TokenType::PLUS:
            emit("    addq %rbx, %rax");
            break;
        case TokenType::MINUS:
            emit("    subq %rbx, %rax");
            break;
        case TokenType::STAR:
            emit("    imulq %rbx, %rax");
            break;
        case TokenType::SLASH:
            emit("    xorq %rdx, %rdx");
            emit("    idivq %rbx");
            break;
        case TokenType::PERCENT:
            emit("    xorq %rdx, %rdx");
            emit("    idivq %rbx");
            emit("    movq %rdx, %rax");
            break;
        case TokenType::EQUAL_EQUAL:
            emit("    cmpq %rbx, %rax");
            emit("    sete %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::NOT_EQUAL:
            emit("    cmpq %rbx, %rax");
            emit("    setne %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::LESS:
            emit("    cmpq %rbx, %rax");
            emit("    setl %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::GREATER:
            emit("    cmpq %rbx, %rax");
            emit("    setg %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::LESS_EQUAL:
            emit("    cmpq %rbx, %rax");
            emit("    setle %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::GREATER_EQUAL:
            emit("    cmpq %rbx, %rax");
            emit("    setge %al");
            emit("    movzbl %al, %eax");
            break;
        case TokenType::AND:
            emit("    testq %rax, %rax");
            emit("    movl $0, %eax");
            emit("    jz .skip_and");
            emit("    testq %rbx, %rbx");
            emit("    movl $1, %eax");
            emit("    jnz .skip_and");
            emit("    movl $0, %eax");
            emit(".skip_and:");
            break;
        case TokenType::OR:
            emit("    testq %rax, %rax");
            emit("    movl $1, %eax");
            emit("    jnz .skip_or");
            emit("    testq %rbx, %rbx");
            emit("    movl $1, %eax");
            emit("    jnz .skip_or");
            emit("    movl $0, %eax");
            emit(".skip_or:");
            break;
        default:
            break;
    }
}

void CodeGen::genUnaryOp(const std::shared_ptr<UnaryOp>& expr) {
    genExpression(expr->operand);
    
    switch (expr->op) {
        case TokenType::MINUS:
            emit("    negq %rax");
            break;
        case TokenType::NOT:
            emit("    testq %rax, %rax");
            emit("    sete %al");
            emit("    movzbl %al, %eax");
            break;
        default:
            break;
    }
}

void CodeGen::genCall(const std::shared_ptr<Call>& expr) {
    if (expr->name == "txtout" || expr->name == "txtout_nl") {
        // Built-in function: output arguments then newline (unless _nl variant).
        bool add_newline = (expr->name == "txtout");
        for (const auto& arg : expr->arguments) {
            if (std::dynamic_pointer_cast<StringLiteral>(arg)) {
                genExpression(arg);
                emit("    movq %rax, %rsi");          // string address
                emit("    leaq fmt_str(%rip), %rdi"); // "%s"
                emit("    xorl %eax, %eax");
                emit("    call __zinc_rt_printf");
                continue;
            }

            if (auto var = std::dynamic_pointer_cast<Variable>(arg); var && isDynamicVariable(var->name)) {
                int offset = getVariableOffset(var->name);
                if (offset >= 0) {
                    std::string is_string_label = newLabel();
                    std::string done_label = newLabel();
                    emit("    movq -" + std::to_string(offset + 16) + "(%rbp), %rbx"); // tag
                    emit("    cmpq $2, %rbx");
                    emit("    je " + is_string_label);
                    emit("    cmpq $3, %rbx");
                    emit("    je " + is_string_label);

                    // Not a string: print as integer.
                    emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rsi");
                    emit("    leaq fmt_int(%rip), %rdi");
                    emit("    xorl %eax, %eax");
                    emit("    call __zinc_rt_printf");
                    emit("    jmp " + done_label);

                    // String: print as string.
                    emitLabel(is_string_label);
                    emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rsi");
                    emit("    leaq fmt_str(%rip), %rdi");
                    emit("    xorl %eax, %eax");
                    emit("    call __zinc_rt_printf");
                    emitLabel(done_label);
                } else {
                    emit("    movl $0, %esi");
                    emit("    leaq fmt_int(%rip), %rdi");
                    emit("    xorl %eax, %eax");
                    emit("    call __zinc_rt_printf");
                }
                continue;
            }

            genExpression(arg);
            emit("    movq %rax, %rsi");          // value
            if (arg && arg->inferred_type == Type::STRING) {
                emit("    leaq fmt_str(%rip), %rdi"); // "%s"
            } else {
                emit("    leaq fmt_int(%rip), %rdi"); // "%ld"
            }
            emit("    xorl %eax, %eax");
            emit("    call __zinc_rt_printf");
        }

        // newline (only for txtout, not txtout_nl)
        if (add_newline) {
            emit("    leaq fmt_nl(%rip), %rdi");
            emit("    xorl %eax, %eax");
            emit("    call __zinc_rt_printf");
        }
    } else if (expr->name == "txtin") {
        // Built-in function: read string from stdin
        // Allocate buffer on heap: 256 bytes for input
        emit("    subq $8, %rsp");                // align stack
        emit("    movq $256, %rdi");               // size
        emit("    call __zinc_rt_malloc");                   // allocate
        emit("    movq %rax, %r12");               // save buffer pointer
        
        emit("    movq %rax, %rdi");               // buffer address
        emit("    movq $255, %rsi");               // max length
        emit("    movq stdin(%rip), %rdx");        // FILE* stdin
        emit("    call __zinc_rt_fgets");
        
        // Remove trailing newline if present
        emit("    movq %r12, %rdi");
        emit("    call __zinc_rt_strlen");
        emit("    movq %rax, %r13");               // save length
        emit("    cmpq $0, %r13");
        emit("    je txtin_done_" + expr->name);
        emit("    decq %r13");
        emit("    movq %r12, %rax");
        emit("    addq %r13, %rax");
        emit("    cmpb $10, (%rax)");              // check for \n
        emit("    jne txtin_done_" + expr->name);
        emit("    movb $0, (%rax)");               // null terminate
        
        emitLabel("txtin_done_" + expr->name);
        emit("    movq %r12, %rax");               // return buffer pointer
    } else if (expr->name == "out") {
        // Built-in function: exit
        if (!expr->arguments.empty()) {
            genExpression(expr->arguments[0]);
        }
        emit("    movq %rax, %rdi");
        emit("    call __zinc_rt_exit");     // libc exit
    } else if (expr->name == "free") {
        if (expr->arguments.empty()) {
            emit("    xorq %rax, %rax");
            emit("    movq %rax, %rdi");
            emit("    call __zinc_rt_free");
            return;
        }

        // If freeing a dynamic local, clear its tag so automatic cleanup doesn't double-free.
        if (auto v = std::dynamic_pointer_cast<Variable>(expr->arguments[0]); v && isDynamicVariable(v->name)) {
            int offset = getVariableOffset(v->name);
            if (offset >= 0) {
                std::string do_free = newLabel();
                std::string done = newLabel();
                emit("    movq -" + std::to_string(offset + 16) + "(%rbp), %rbx"); // tag
                emit("    cmpq $2, %rbx");
                emit("    je " + do_free);
                emit("    cmpq $4, %rbx");
                emit("    je " + do_free);
                emit("    jmp " + done);
                emitLabel(do_free);
                emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rdi");
                emit("    call __zinc_rt_free");
                emit("    xorq %rax, %rax");
                emit("    movq %rax, -" + std::to_string(offset + 8) + "(%rbp)");
                emit("    movq $1, -" + std::to_string(offset + 16) + "(%rbp)");
                emitLabel(done);
                return;
            }
        }

        genExpression(expr->arguments[0]);
        emit("    movq %rax, %rdi");
        emit("    call __zinc_rt_free");
    } else if (expr->name == "copy") {
        // Built-in: deep copy for strings; identity for scalars/pointers.
        if (expr->arguments.size() != 1) {
            throw std::runtime_error("copy() expects exactly 1 argument");
        }
        auto arg = expr->arguments[0];
        genExpression(arg);
        if (arg && arg->inferred_type == Type::STRING) {
            emit("    movq %rax, %rdi");
            // align stack
            emit("    subq $8, %rsp");
            emit("    call __zinc_rt_strdup");
            emit("    addq $8, %rsp");
        }
    } else {
        // Regular function call
        // Evaluate args right-to-left and push results so nested calls don't clobber earlier args.
        // Then pop into registers in left-to-right order.
        size_t n = expr->arguments.size();
        if (n > 6) {
            throw std::runtime_error("Calls with more than 6 arguments are not supported yet");
        }

        // Ensure 16-byte stack alignment at call time.
        // After function prologue + local allocation, %rsp is 16-aligned.
        // Pushing N args changes alignment when N is odd.
        bool added_align_pad = false;
        if ((n % 2) == 1) {
            emit("    subq $8, %rsp");
            added_align_pad = true;
        }

        for (size_t i = 0; i < n; i++) {
            size_t idx = n - 1 - i;
            genExpression(expr->arguments[idx]);
            emit("    pushq %rax");
        }

        static const char* arg_regs[] = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
        for (size_t i = 0; i < n; i++) {
            emit("    popq " + std::string(arg_regs[i]));
        }

        emit("    call " + expr->name);

        if (added_align_pad) {
            emit("    addq $8, %rsp");
        }
    }
}

void CodeGen::genVariable(const std::shared_ptr<Variable>& expr) {
    int offset = getVariableOffset(expr->name);
    if (offset >= 0) {
        emit("    movq -" + std::to_string(offset + 8) + "(%rbp), %rax");
    } else {
        // Undefined variable; keep behavior deterministic for now.
        emit("    xorq %rax, %rax");
    }
}

void CodeGen::genNumberLiteral(const std::shared_ptr<NumberLiteral>& expr) {
    emit("    movq $" + std::to_string(expr->value) + ", %rax");
}

void CodeGen::genFloatLiteral(const std::shared_ptr<FloatLiteral>& expr) {
    // For simplicity, convert float to integer (losing decimal part)
    // In a full implementation, store float in data section and load
    long long int_val = static_cast<long long>(expr->value);
    emit("    movq $" + std::to_string(int_val) + ", %rax");
}

void CodeGen::genStringLiteral(const std::shared_ptr<StringLiteral>& expr) {
    string_literals.push_back(expr->value);
    int index = string_literals.size() - 1;
    emit("    leaq str_" + std::to_string(index) + "(%rip), %rax");
}

void CodeGen::genBoolLiteral(const std::shared_ptr<BoolLiteral>& expr) {
    emit("    movq $" + std::to_string(expr->value ? 1 : 0) + ", %rax");
}
