#pragma once

#include "ast.h"
#include <vector>
#include <memory>
#include <stdexcept>
#include <unordered_set>
#include <unordered_map>

class ParseError : public std::runtime_error {
public:
    ParseError(const std::string& msg) : std::runtime_error(msg) {}
};

class Parser {
private:
    std::vector<Token> tokens;
    size_t pos;
    std::unordered_set<std::string> class_names;
    std::unordered_map<std::string, std::string> var_classes;
    
    Token current();
    Token peek(int offset = 1);
    void advance();
    bool match(TokenType type);
    bool check(TokenType type);
    Token consume(TokenType type, const std::string& msg);
    
    // Parsing functions
    std::unique_ptr<Program> program();
    std::shared_ptr<Function> function();
    std::shared_ptr<Function> method(const std::string& class_name);
    std::vector<StmtPtr> blockStatements();
    StmtPtr statement();
    StmtPtr varDeclaration();
    StmtPtr ifStatement();
    StmtPtr whileStatement();
    StmtPtr forStatement();
    StmtPtr doWhileStatement();
    StmtPtr switchStatement();
    StmtPtr returnStatement();
    StmtPtr tryCatchStatement();
    StmtPtr structDeclaration();
    std::shared_ptr<ClassDecl> classDeclaration();
    StmtPtr asmStatement();
    StmtPtr importStatement();
    StmtPtr expressionStatement();
    
    Type parseType();
    ExprPtr expression();
    ExprPtr assignment();
    ExprPtr logicalOr();
    ExprPtr logicalAnd();
    ExprPtr equality();
    ExprPtr comparison();
    ExprPtr bitwiseOr();
    ExprPtr bitwiseXor();
    ExprPtr bitwiseAnd();
    ExprPtr shift();
    ExprPtr additive();
    ExprPtr multiplicative();
    ExprPtr unary();
    ExprPtr cast();
    ExprPtr call();
    ExprPtr memberAccess();
    ExprPtr ternary();
    ExprPtr primary();
    
public:
    Parser(const std::vector<Token>& toks);
    std::unique_ptr<Program> parse();
};
