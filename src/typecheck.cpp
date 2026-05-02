#include "typecheck.h"
#include <sstream>

std::string TypeChecker::typeName(Type t) {
    switch (t) {
        case Type::INT: return "int";
        case Type::FLOAT: return "float";
        case Type::STRING: return "string";
        case Type::BOOL: return "bool";
        case Type::CHAR: return "char";
        case Type::VOID: return "void";
        case Type::POINTER: return "pointer";
        case Type::NULLPTR: return "nullptr";
        case Type::CONST: return "const";
        case Type::UNKNOWN: return "unknown";
        default: return "unknown";
    }
}

void TypeChecker::check(const Program& program) {
    function_returns.clear();

    // Collect return types for all known functions (including class methods).
    for (const auto& cls : program.classes) {
        if (!cls) continue;
        for (const auto& m : cls->methods) {
            if (!m) continue;
            function_returns[m->name] = m->return_type;
        }
    }
    for (const auto& fn : program.functions) {
        if (!fn) continue;
        function_returns[fn->name] = fn->return_type;
    }

    // Now typecheck bodies.
    for (const auto& cls : program.classes) {
        if (!cls) continue;
        for (const auto& m : cls->methods) checkFunction(*m);
    }
    for (const auto& fn : program.functions) checkFunction(*fn);
}

void TypeChecker::checkFunction(const Function& func) {
    vars.clear();

    for (const auto& [name, ty] : func.parameters) {
        vars[name] = VarTypeInfo{ty, ty == Type::UNKNOWN};
    }

    for (const auto& stmt : func.body) {
        checkStatement(stmt);
    }
}

void TypeChecker::checkStatement(const StmtPtr& stmt) {
    if (!stmt) return;

    switch (stmt->type) {
        case ASTNodeType::VARIABLE_DECL: {
            auto decl = std::dynamic_pointer_cast<VariableDecl>(stmt);
            if (!decl) break;

            Type rhs = checkExpr(decl->initializer);
            if (decl->is_explicit_type && decl->explicit_type != Type::UNKNOWN) {
                // Very simple compatibility check for now.
                if (decl->explicit_type == rhs) {
                    // ok
                } else if (decl->explicit_type == Type::POINTER && rhs == Type::NULLPTR) {
                    // ok
                } else if (decl->explicit_type == Type::FLOAT && rhs == Type::INT) {
                    // ok (widen)
                } else {
                    std::ostringstream oss;
                    oss << "Type error: cannot bind '" << decl->name << "' as "
                        << typeName(decl->explicit_type) << " from " << typeName(rhs)
                        << " at line " << decl->line << ", column " << decl->column;
                    throw TypeError(oss.str());
                }
                vars[decl->name] = VarTypeInfo{decl->explicit_type, false};
            } else {
                vars[decl->name] = VarTypeInfo{rhs, true};
            }
            break;
        }
        case ASTNodeType::EXPRESSION_STMT: {
            auto es = std::dynamic_pointer_cast<ExpressionStmt>(stmt);
            if (es) (void)checkExpr(es->expression);
            break;
        }
        case ASTNodeType::IF_STMT: {
            auto is = std::dynamic_pointer_cast<IfStmt>(stmt);
            if (!is) break;
            (void)checkExpr(is->condition);
            checkStatement(is->then_branch);
            checkStatement(is->else_branch);
            break;
        }
        case ASTNodeType::WHILE_STMT: {
            auto ws = std::dynamic_pointer_cast<WhileStmt>(stmt);
            if (!ws) break;
            (void)checkExpr(ws->condition);
            checkStatement(ws->body);
            break;
        }
        case ASTNodeType::FOR_STMT: {
            auto fs = std::dynamic_pointer_cast<ForStmt>(stmt);
            if (!fs) break;
            checkStatement(fs->initializer);
            (void)checkExpr(fs->condition);
            (void)checkExpr(fs->increment);
            checkStatement(fs->body);
            break;
        }
        case ASTNodeType::RETURN_STMT: {
            auto rs = std::dynamic_pointer_cast<ReturnStmt>(stmt);
            if (rs) (void)checkExpr(rs->value);
            break;
        }
        case ASTNodeType::BLOCK: {
            auto b = std::dynamic_pointer_cast<Block>(stmt);
            if (!b) break;
            for (const auto& s : b->statements) checkStatement(s);
            break;
        }
        default:
            break;
    }
}

Type TypeChecker::checkExpr(const ExprPtr& expr) {
    if (!expr) return Type::VOID;

    switch (expr->type) {
        case ASTNodeType::NUMBER_LITERAL:
            expr->inferred_type = Type::INT;
            return Type::INT;
        case ASTNodeType::FLOAT_LITERAL:
            expr->inferred_type = Type::FLOAT;
            return Type::FLOAT;
        case ASTNodeType::STRING_LITERAL:
            expr->inferred_type = Type::STRING;
            return Type::STRING;
        case ASTNodeType::BOOL_LITERAL:
            expr->inferred_type = Type::BOOL;
            return Type::BOOL;
        case ASTNodeType::CHAR_LITERAL:
            expr->inferred_type = Type::CHAR;
            return Type::CHAR;
        case ASTNodeType::NULLPTR_LITERAL:
            expr->inferred_type = Type::NULLPTR;
            return Type::NULLPTR;
        case ASTNodeType::VARIABLE: {
            auto v = std::dynamic_pointer_cast<Variable>(expr);
            if (!v) return Type::UNKNOWN;
            auto it = vars.find(v->name);
            if (it == vars.end()) {
                expr->inferred_type = Type::UNKNOWN;
                return Type::UNKNOWN;
            }
            expr->inferred_type = it->second.type;
            return it->second.type;
        }
        case ASTNodeType::ADDRESS_OF:
            expr->inferred_type = Type::POINTER;
            return Type::POINTER;
        case ASTNodeType::DEREF:
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        case ASTNodeType::CAST: {
            auto c = std::dynamic_pointer_cast<CastExpr>(expr);
            if (c) expr->inferred_type = c->target_type;
            return c ? c->target_type : Type::UNKNOWN;
        }
        case ASTNodeType::CALL: {
            // For now: builtins have known types, user calls unknown.
            auto call = std::dynamic_pointer_cast<Call>(expr);
            if (call) {
                for (const auto& a : call->arguments) (void)checkExpr(a);
            }
            if (call && (call->name == "txtout" || call->name == "txtout_nl" || call->name == "out" || call->name == "free")) {
                expr->inferred_type = Type::VOID;
                return Type::VOID;
            }
            if (call && call->name == "copy") {
                if (call->arguments.size() == 1) {
                    Type at = checkExpr(call->arguments[0]);
                    // Strings are duplicated; scalars are value-copied.
                    expr->inferred_type = at;
                    return at;
                }
                expr->inferred_type = Type::UNKNOWN;
                return Type::UNKNOWN;
            }
            if (call && call->name == "txtin") {
                expr->inferred_type = Type::STRING;
                return Type::STRING;
            }
            if (call) {
                auto it = function_returns.find(call->name);
                if (it != function_returns.end()) {
                    expr->inferred_type = it->second;
                    return it->second;
                }
            }
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        }
        case ASTNodeType::ARRAY_ACCESS: {
            auto acc = std::dynamic_pointer_cast<ArrayAccess>(expr);
            (void)checkExpr(acc ? acc->index : nullptr);
            // Special-case argv: in C, argv[i] is a string pointer.
            if (acc && acc->name == "argv") {
                expr->inferred_type = Type::STRING;
                return Type::STRING;
            }
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        }
        case ASTNodeType::MEMBER_ACCESS:
        case ASTNodeType::PTR_MEMBER_ACCESS: {
            auto mem = std::dynamic_pointer_cast<MemberAccessExpr>(expr);
            if (mem) (void)checkExpr(mem->base);
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        }
        case ASTNodeType::BINARY_OP: {
            auto b = std::dynamic_pointer_cast<BinaryOp>(expr);
            if (!b) return Type::UNKNOWN;

            if (b->op == TokenType::IS) {
                // bind/rebind
                auto rhs = checkExpr(b->right);
                if (auto v = std::dynamic_pointer_cast<Variable>(b->left)) {
                    auto& info = vars[v->name];
                    if (info.dynamic || info.type == Type::UNKNOWN) {
                        info.type = rhs;
                        info.dynamic = true;
                    } else {
                        // static: require compatibility
                        if (info.type == rhs) {
                            // ok
                        } else if (info.type == Type::POINTER && rhs == Type::NULLPTR) {
                            // ok
                        } else if (info.type == Type::FLOAT && rhs == Type::INT) {
                            // ok
                        } else {
                            std::ostringstream oss;
                            oss << "Type error: cannot rebind '" << v->name << "' as "
                                << typeName(info.type) << " from " << typeName(rhs)
                                << " at line " << expr->line << ", column " << expr->column;
                            throw TypeError(oss.str());
                        }
                    }
                }
                expr->inferred_type = rhs;
                return rhs;
            }

            Type lt = checkExpr(b->left);
            Type rt = checkExpr(b->right);

            if (b->op == TokenType::PLUS || b->op == TokenType::MINUS ||
                b->op == TokenType::STAR || b->op == TokenType::SLASH ||
                b->op == TokenType::PERCENT) {
                if (isNumeric(lt) && isNumeric(rt)) {
                    Type out = (lt == Type::FLOAT || rt == Type::FLOAT) ? Type::FLOAT : Type::INT;
                    expr->inferred_type = out;
                    return out;
                }
                expr->inferred_type = Type::UNKNOWN;
                return Type::UNKNOWN;
            }

            // comparisons/logicals are bool-ish
            if (b->op == TokenType::EQUAL_EQUAL || b->op == TokenType::NOT_EQUAL ||
                b->op == TokenType::LESS || b->op == TokenType::LESS_EQUAL ||
                b->op == TokenType::GREATER || b->op == TokenType::GREATER_EQUAL ||
                b->op == TokenType::AND || b->op == TokenType::OR) {
                expr->inferred_type = Type::BOOL;
                return Type::BOOL;
            }

            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        }
        case ASTNodeType::UNARY_OP: {
            auto u = std::dynamic_pointer_cast<UnaryOp>(expr);
            if (!u) return Type::UNKNOWN;
            Type ot = checkExpr(u->operand);
            if (u->op == TokenType::NOT) {
                expr->inferred_type = Type::BOOL;
                return Type::BOOL;
            }
            if (u->op == TokenType::MINUS) {
                expr->inferred_type = ot;
                return ot;
            }
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
        }
        default:
            expr->inferred_type = Type::UNKNOWN;
            return Type::UNKNOWN;
    }
}
