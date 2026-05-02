#pragma once

#include <string>
#include <vector>
#include <memory>
#include <unordered_map>

// Token types for lexer
enum class TokenType {
    // Literals
    NUMBER,
    FLOAT_NUMBER,
    STRING,
    IDENTIFIER,
    CHAR_LITERAL,
    
    // Keywords
    FUNC, INT, FLOAT, STRING_TYPE, BOOL, CHAR, VOID,
    IF, ELSE, WHILE, FOR, BREAK, CONTINUE, RETURN,
    TRUE, FALSE,
    TXTOUT, TXTOUT_NL, TXTIN, OUT,
    CONST, STRUCT, SWITCH, CASE, DEFAULT, MATCH, TRY, CATCH, THROW,
    IMPORT, EXPORT, MODULE, TYPE, NEW, DELETE, SIZEOF, DO,
    NULLPTR,
    CLASS,
    ASM,
    
    // Operators
    PLUS, MINUS, STAR, SLASH, PERCENT,
    EQUAL_EQUAL, NOT_EQUAL, LESS, GREATER, LESS_EQUAL, GREATER_EQUAL,
    AND, OR, NOT,
    IS,
    // Bitwise operators
    AMPERSAND, PIPE, CARET, TILDE, LSHIFT, RSHIFT,
    // Ternary
    QUESTION, COLON,
    // Pointer
    ARROW, DOT,
    
    // Punctuation
    LPAREN, RPAREN, LBRACE, RBRACE, LBRACKET, RBRACKET,
    SEMICOLON, COMMA,
    
    // Special
    EOF_TOKEN,
    UNKNOWN
};

struct Token {
    TokenType type;
    std::string lexeme;
    int line;
    int column;
    
    Token(TokenType t, const std::string& l, int ln, int col)
        : type(t), lexeme(l), line(ln), column(col) {}
};

// AST Node types
enum class ASTNodeType {
    PROGRAM,
    FUNCTION,
    BLOCK,
    VARIABLE_DECL,
    IF_STMT,
    WHILE_STMT,
    FOR_STMT,
    DO_WHILE_STMT,
    RETURN_STMT,
    BREAK_STMT,
    CONTINUE_STMT,
    EXPRESSION_STMT,
    BINARY_OP,
    UNARY_OP,
    CALL,
    MEMBER_ACCESS,
    PTR_MEMBER_ACCESS,
    VARIABLE,
    NUMBER_LITERAL,
    FLOAT_LITERAL,
    STRING_LITERAL,
    BOOL_LITERAL,
    CHAR_LITERAL,
    ARRAY_ACCESS,
    ARRAY_LITERAL,
    TERNARY,
    SWITCH_STMT,
    CASE_STMT,
    DEFAULT_STMT,
    STRUCT_DECL,
    CLASS_DECL,
    STRUCT_FIELD,
    MATCH_EXPR,
    MATCH_CASE,
    TRY_CATCH,
    THROW_STMT,
    IMPORT_STMT,
    ASM_STMT,
    POINTER_TYPE,
    CAST,
    ADDRESS_OF,
    DEREF,
    NULLPTR_LITERAL,
};

enum class Type {
    INT,
    FLOAT,
    STRING,
    BOOL,
    CHAR,
    VOID,
    UNKNOWN,
    POINTER,
    ARRAY,
    STRUCT,
    FUNCTION,
    CONST,
    NULLPTR,
};

// Forward declarations
class ASTNode;
class Expression;
class Statement;
class Function;

using ASTNodePtr = std::shared_ptr<ASTNode>;
using ExprPtr = std::shared_ptr<Expression>;
using StmtPtr = std::shared_ptr<Statement>;

// Base AST Node
class ASTNode {
public:
    ASTNodeType type;
    int line;
    int column;
    
    ASTNode(ASTNodeType t, int l, int c) : type(t), line(l), column(c) {}
    virtual ~ASTNode() = default;
};

// Expression node
class Expression : public ASTNode {
public:
    Type inferred_type;
    
    Expression(ASTNodeType t, int l, int c) 
        : ASTNode(t, l, c), inferred_type(Type::UNKNOWN) {}
    virtual ~Expression() = default;
};

// Statement node
class Statement : public ASTNode {
public:
    Statement(ASTNodeType t, int l, int c) : ASTNode(t, l, c) {}
    virtual ~Statement() = default;
};

// Number literal
class NumberLiteral : public Expression {
public:
    long long value;
    
    NumberLiteral(long long v, int l, int c)
        : Expression(ASTNodeType::NUMBER_LITERAL, l, c), value(v) {
        inferred_type = Type::INT;
    }
};

// Float literal
class FloatLiteral : public Expression {
public:
    double value;
    
    FloatLiteral(double v, int l, int c)
        : Expression(ASTNodeType::FLOAT_LITERAL, l, c), value(v) {
        inferred_type = Type::FLOAT;
    }
};

// String literal
class StringLiteral : public Expression {
public:
    std::string value;
    
    StringLiteral(const std::string& v, int l, int c)
        : Expression(ASTNodeType::STRING_LITERAL, l, c), value(v) {
        inferred_type = Type::STRING;
    }
};

// Bool literal
class BoolLiteral : public Expression {
public:
    bool value;
    
    BoolLiteral(bool v, int l, int c)
        : Expression(ASTNodeType::BOOL_LITERAL, l, c), value(v) {
        inferred_type = Type::BOOL;
    }
};

// Char literal
class CharLiteral : public Expression {
public:
    char value;
    
    CharLiteral(char v, int l, int c)
        : Expression(ASTNodeType::CHAR_LITERAL, l, c), value(v) {
        inferred_type = Type::CHAR;
    }
};

// Array literal
class ArrayLiteral : public Expression {
public:
    std::vector<ExprPtr> elements;
    
    ArrayLiteral(const std::vector<ExprPtr>& elems, int l, int c)
        : Expression(ASTNodeType::ARRAY_LITERAL, l, c), elements(elems) {}
};

// Ternary expression
class TernaryExpr : public Expression {
public:
    ExprPtr condition;
    ExprPtr then_expr;
    ExprPtr else_expr;
    
    TernaryExpr(ExprPtr cond, ExprPtr then_e, ExprPtr else_e, int l, int c)
        : Expression(ASTNodeType::TERNARY, l, c),
          condition(cond), then_expr(then_e), else_expr(else_e) {}
};

// Cast expression
class CastExpr : public Expression {
public:
    ExprPtr operand;
    Type target_type;
    
    CastExpr(ExprPtr op, Type t, int l, int c)
        : Expression(ASTNodeType::CAST, l, c), operand(op), target_type(t) {}
};

// Address-of expression (&var)
class AddressOfExpr : public Expression {
public:
    std::string variable_name;
    
    AddressOfExpr(const std::string& name, int l, int c)
        : Expression(ASTNodeType::ADDRESS_OF, l, c), variable_name(name) {
        inferred_type = Type::POINTER;
    }
};

// Dereference expression (*ptr)
class DerefExpr : public Expression {
public:
    ExprPtr pointer;
    
    DerefExpr(ExprPtr ptr, int l, int c)
        : Expression(ASTNodeType::DEREF, l, c), pointer(ptr) {}
};

// Null pointer literal
class NullptrLiteral : public Expression {
public:
    NullptrLiteral(int l, int c)
        : Expression(ASTNodeType::NULLPTR_LITERAL, l, c) {
        inferred_type = Type::NULLPTR;
    }
};

// Variable reference
class Variable : public Expression {
public:
    std::string name;
    
    Variable(const std::string& n, int l, int c)
        : Expression(ASTNodeType::VARIABLE, l, c), name(n) {}
};

// Binary operation
class BinaryOp : public Expression {
public:
    ExprPtr left;
    TokenType op;
    ExprPtr right;
    
    BinaryOp(ExprPtr l, TokenType o, ExprPtr r, int ln, int c)
        : Expression(ASTNodeType::BINARY_OP, ln, c), left(l), op(o), right(r) {}
};

// Unary operation
class UnaryOp : public Expression {
public:
    TokenType op;
    ExprPtr operand;
    
    UnaryOp(TokenType o, ExprPtr e, int l, int c)
        : Expression(ASTNodeType::UNARY_OP, l, c), op(o), operand(e) {}
};

// Function call
class Call : public Expression {
public:
    std::string name;
    std::vector<ExprPtr> arguments;
    
    Call(const std::string& n, const std::vector<ExprPtr>& args, int l, int c)
        : Expression(ASTNodeType::CALL, l, c), name(n), arguments(args) {}
};

// Member access: expr.field
class MemberAccessExpr : public Expression {
public:
    ExprPtr base;
    std::string field;
    // If known, the declaring type name for field/method resolution.
    std::string resolved_class;

    MemberAccessExpr(ASTNodeType node_type, ExprPtr b, const std::string& f, int l, int c,
                     const std::string& resolved = "")
        : Expression(node_type, l, c), base(b), field(f), resolved_class(resolved) {}
};

// Array access
class ArrayAccess : public Expression {
public:
    std::string name;
    ExprPtr index;
    
    ArrayAccess(const std::string& n, ExprPtr idx, int l, int c)
        : Expression(ASTNodeType::ARRAY_ACCESS, l, c), name(n), index(idx) {}
};

// Variable declaration
class VariableDecl : public Statement {
public:
    std::string name;
    Type explicit_type;
    ExprPtr initializer;
    bool is_explicit_type;
    
    VariableDecl(const std::string& n, Type t, ExprPtr init, bool is_explicit, int l, int c)
        : Statement(ASTNodeType::VARIABLE_DECL, l, c), 
          name(n), explicit_type(t), initializer(init), is_explicit_type(is_explicit) {}
};

// Block
class Block : public Statement {
public:
    std::vector<StmtPtr> statements;
    
    Block(const std::vector<StmtPtr>& stmts, int l, int c)
        : Statement(ASTNodeType::BLOCK, l, c), statements(stmts) {}
};

// If statement
class IfStmt : public Statement {
public:
    ExprPtr condition;
    StmtPtr then_branch;
    StmtPtr else_branch;
    
    IfStmt(ExprPtr cond, StmtPtr then_b, StmtPtr else_b, int l, int c)
        : Statement(ASTNodeType::IF_STMT, l, c), 
          condition(cond), then_branch(then_b), else_branch(else_b) {}
};

// While statement
class WhileStmt : public Statement {
public:
    ExprPtr condition;
    StmtPtr body;
    
    WhileStmt(ExprPtr cond, StmtPtr b, int l, int c)
        : Statement(ASTNodeType::WHILE_STMT, l, c), 
          condition(cond), body(b) {}
};

// For statement
class ForStmt : public Statement {
public:
    StmtPtr initializer;
    ExprPtr condition;
    ExprPtr increment;
    StmtPtr body;
    
    ForStmt(StmtPtr init, ExprPtr cond, ExprPtr inc, StmtPtr b, int l, int c)
        : Statement(ASTNodeType::FOR_STMT, l, c),
          initializer(init), condition(cond), increment(inc), body(b) {}
};

// Return statement
class ReturnStmt : public Statement {
public:
    ExprPtr value;
    
    ReturnStmt(ExprPtr v, int l, int c)
        : Statement(ASTNodeType::RETURN_STMT, l, c), value(v) {}
};

// Break statement
class BreakStmt : public Statement {
public:
    BreakStmt(int l, int c) : Statement(ASTNodeType::BREAK_STMT, l, c) {}
};

// Continue statement
class ContinueStmt : public Statement {
public:
    ContinueStmt(int l, int c) : Statement(ASTNodeType::CONTINUE_STMT, l, c) {}
};

// Do-while statement
class DoWhileStmt : public Statement {
public:
    StmtPtr body;
    ExprPtr condition;
    
    DoWhileStmt(StmtPtr b, ExprPtr cond, int l, int c)
        : Statement(ASTNodeType::DO_WHILE_STMT, l, c),
          body(b), condition(cond) {}
};

// Switch statement
class SwitchStmt : public Statement {
public:
    ExprPtr condition;
    std::vector<std::pair<ExprPtr, StmtPtr>> cases; // value -> body
    StmtPtr default_case;
    
    SwitchStmt(ExprPtr cond, const std::vector<std::pair<ExprPtr, StmtPtr>>& cases, StmtPtr def, int l, int c)
        : Statement(ASTNodeType::SWITCH_STMT, l, c),
          condition(cond), cases(cases), default_case(def) {}
};

// Match expression
class MatchExpr : public Expression {
public:
    ExprPtr condition;
    std::vector<std::pair<ExprPtr, ExprPtr>> cases; // pattern -> result
    ExprPtr default_expr;
    
    MatchExpr(ExprPtr cond, const std::vector<std::pair<ExprPtr, ExprPtr>>& cases, ExprPtr def, int l, int c)
        : Expression(ASTNodeType::MATCH_EXPR, l, c),
          condition(cond), cases(cases), default_expr(def) {}
};

// Try-catch statement
class TryCatchStmt : public Statement {
public:
    StmtPtr try_block;
    StmtPtr catch_block;
    std::string exception_var;
    
    TryCatchStmt(StmtPtr try_b, StmtPtr catch_b, const std::string& var, int l, int c)
        : Statement(ASTNodeType::TRY_CATCH, l, c),
          try_block(try_b), catch_block(catch_b), exception_var(var) {}
};

// Throw statement
class ThrowStmt : public Statement {
public:
    ExprPtr message;
    
    ThrowStmt(ExprPtr msg, int l, int c)
        : Statement(ASTNodeType::THROW_STMT, l, c), message(msg) {}
};

// Struct declaration
class StructDecl : public Statement {
public:
    std::string name;
    std::vector<std::pair<std::string, Type>> fields;
    
    StructDecl(const std::string& n, const std::vector<std::pair<std::string, Type>>& f, int l, int c)
        : Statement(ASTNodeType::STRUCT_DECL, l, c), name(n), fields(f) {}
};

// Class declaration (fields + methods)
class ClassDecl : public Statement {
public:
    std::string name;
    std::vector<std::pair<std::string, Type>> fields;
    std::vector<std::shared_ptr<Function>> methods;

    ClassDecl(const std::string& n,
              const std::vector<std::pair<std::string, Type>>& f,
              const std::vector<std::shared_ptr<Function>>& m,
              int l, int c)
        : Statement(ASTNodeType::CLASS_DECL, l, c), name(n), fields(f), methods(m) {}
};

// Import statement
class ImportStmt : public Statement {
public:
    std::string module_path;
    std::string alias;
    
    ImportStmt(const std::string& path, const std::string& alias, int l, int c)
        : Statement(ASTNodeType::IMPORT_STMT, l, c), module_path(path), alias(alias) {}
};

// Inline assembly block
class AsmStmt : public Statement {
public:
    std::string asm_text;

    AsmStmt(const std::string& text, int l, int c)
        : Statement(ASTNodeType::ASM_STMT, l, c), asm_text(text) {}
};

// Expression statement
class ExpressionStmt : public Statement {
public:
    ExprPtr expression;
    
    ExpressionStmt(ExprPtr expr, int l, int c)
        : Statement(ASTNodeType::EXPRESSION_STMT, l, c), expression(expr) {}
};

// Function declaration
class Function {
public:
    std::string name;
    Type return_type;
    std::vector<std::pair<std::string, Type>> parameters;
    std::vector<StmtPtr> body;
    int line;
    int column;
    
    Function(const std::string& n, Type ret_type, 
             const std::vector<std::pair<std::string, Type>>& params,
             const std::vector<StmtPtr>& b, int l, int c)
        : name(n), return_type(ret_type), parameters(params), body(b), line(l), column(c) {}
};

// Program (collection of functions)
class Program {
public:
    std::vector<std::shared_ptr<ClassDecl>> classes;
    std::vector<std::shared_ptr<Function>> functions;
    
    Program(const std::vector<std::shared_ptr<ClassDecl>>& cls,
            const std::vector<std::shared_ptr<Function>>& funcs)
        : classes(cls), functions(funcs) {}
};
