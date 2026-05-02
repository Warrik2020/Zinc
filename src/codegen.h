#pragma once

#include "ast.h"
#include <string>
#include <vector>
#include <unordered_map>
#include <memory>

class CodeGen {
private:
    struct VarInfo {
        int offset = -1;      // byte offset from start of locals area (grows positively)
        bool dynamic = false; // dynamic vars store (value, tag)
    };

    std::string output;
    std::unordered_map<std::string, VarInfo> variables; // variable name -> stack info
    int stack_offset;
    int label_counter;
    std::vector<std::string> string_literals;

    struct ClassLayout {
        std::unordered_map<std::string, int> field_offsets;
        int size_bytes = 0;
    };
    std::unordered_map<std::string, ClassLayout> class_layouts;

    std::string newLabel();
    void emit(const std::string& line);
    void emitLabel(const std::string& label);
    void pushVariable(const std::string& name, bool dynamic);
    int getVariableOffset(const std::string& name);
    bool isDynamicVariable(const std::string& name);
    
    void collectStringLiterals(const Program& program);
    void collectFromExpression(const ExprPtr& expr);
    
    void genProgram(const Program& program);
    void genRuntimeHelpers();
    void genFunction(const Function& func);
    void buildClassLayouts(const Program& program);
    void genClassAllocators(const Program& program);
    void genClassCopiers(const Program& program);
    void genBlockStatements(const std::vector<StmtPtr>& statements);
    void genStatement(const StmtPtr& stmt);
    void genVariableDecl(const std::shared_ptr<VariableDecl>& decl);
    void genIfStmt(const std::shared_ptr<IfStmt>& stmt);
    void genWhileStmt(const std::shared_ptr<WhileStmt>& stmt);
    void genForStmt(const std::shared_ptr<ForStmt>& stmt);
    void genReturnStmt(const std::shared_ptr<ReturnStmt>& stmt);
    void genBreakStmt(const std::shared_ptr<BreakStmt>& stmt);
    void genContinueStmt(const std::shared_ptr<ContinueStmt>& stmt);
    void genExpressionStmt(const std::shared_ptr<ExpressionStmt>& stmt);
    void genBlock(const std::shared_ptr<Block>& stmt);
    void genAsmStmt(const std::shared_ptr<AsmStmt>& stmt);
    
    void genExpression(const ExprPtr& expr);
    void genBinaryOp(const std::shared_ptr<BinaryOp>& expr);
    void genUnaryOp(const std::shared_ptr<UnaryOp>& expr);
    void genCall(const std::shared_ptr<Call>& expr);
    void genVariable(const std::shared_ptr<Variable>& expr);
    void genNumberLiteral(const std::shared_ptr<NumberLiteral>& expr);
    void genFloatLiteral(const std::shared_ptr<FloatLiteral>& expr);
    void genStringLiteral(const std::shared_ptr<StringLiteral>& expr);
    void genBoolLiteral(const std::shared_ptr<BoolLiteral>& expr);
    
    // Loop tracking
    std::vector<std::pair<std::string, std::string>> loop_stack; // (break_label, continue_label)

    std::string current_function_end_label;
    
public:
    CodeGen();
    std::string generate(const Program& program);
};
