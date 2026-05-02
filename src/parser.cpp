#include "parser.h"
#include <sstream>

Parser::Parser(const std::vector<Token>& toks) : tokens(toks), pos(0) {}

Token Parser::current() {
    if (pos >= tokens.size()) return tokens.back();
    return tokens[pos];
}

Token Parser::peek(int offset) {
    if (pos + offset >= tokens.size()) return tokens.back();
    return tokens[pos + offset];
}

void Parser::advance() {
    if (pos < tokens.size()) pos++;
}

bool Parser::match(TokenType type) {
    if (check(type)) {
        advance();
        return true;
    }
    return false;
}

bool Parser::check(TokenType type) {
    return current().type == type;
}

Token Parser::consume(TokenType type, const std::string& msg) {
    if (!check(type)) {
        std::ostringstream oss;
        oss << msg << " at line " << current().line << ", column " << current().column;
        throw ParseError(oss.str());
    }
    Token t = current();
    advance();
    return t;
}

Type Parser::parseType() {
    if (match(TokenType::CONST)) {
        (void)parseType();
        return Type::CONST; // For now, just return CONST
    }

    Type base = Type::UNKNOWN;
    if (match(TokenType::INT)) base = Type::INT;
    else if (match(TokenType::FLOAT)) base = Type::FLOAT;
    else if (match(TokenType::STRING_TYPE)) base = Type::STRING;
    else if (match(TokenType::BOOL)) base = Type::BOOL;
    else if (match(TokenType::CHAR)) base = Type::CHAR;
    else if (match(TokenType::VOID)) base = Type::VOID;
    else if (match(TokenType::IDENTIFIER)) {
        // Type alias - treat as UNKNOWN for now
        return Type::UNKNOWN;
    } else {
        return Type::UNKNOWN;
    }

    bool is_pointer = false;
    while (match(TokenType::STAR)) {
        is_pointer = true;
    }

    return is_pointer ? Type::POINTER : base;
}

std::unique_ptr<Program> Parser::program() {
    std::vector<std::shared_ptr<ClassDecl>> classes;
    std::vector<std::shared_ptr<Function>> functions;
    
    while (!check(TokenType::EOF_TOKEN)) {
        // `export` is currently accepted as a no-op modifier on top-level declarations.
        (void)match(TokenType::EXPORT);

        if (check(TokenType::FUNC)) {
            functions.push_back(function());
        } else if (check(TokenType::CLASS)) {
            classes.push_back(classDeclaration());
        } else if (check(TokenType::MODULE)) {
            // Module declaration is currently parsed and ignored:
            //   module Name;
            advance();
            if (check(TokenType::IDENTIFIER)) advance();
            consume(TokenType::SEMICOLON, "Expected ';' after module declaration");
        } else {
            throw ParseError("Expected 'func', 'class', 'export', or 'module' at top level");
        }
    }
    
    return std::make_unique<Program>(classes, functions);
}

std::shared_ptr<ClassDecl> Parser::classDeclaration() {
    consume(TokenType::CLASS, "Expected 'class'");
    Token name_token = consume(TokenType::IDENTIFIER, "Expected class name");
    std::string class_name = name_token.lexeme;
    class_names.insert(class_name);

    consume(TokenType::LBRACE, "Expected '{' after class name");

    std::vector<std::pair<std::string, Type>> fields;
    std::vector<std::shared_ptr<Function>> methods;
    while (!check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
        if (check(TokenType::FUNC)) {
            auto m = method(class_name);
            m->name = class_name + "__" + m->name;
            methods.push_back(m);
            continue;
        }

        // Field: <type> <name>;
        Type field_type = parseType();
        if (field_type == Type::UNKNOWN) {
            std::ostringstream oss;
            oss << "Expected field declaration or 'func' in class body at line "
                << current().line << ", column " << current().column;
            throw ParseError(oss.str());
        }
        Token field_name = consume(TokenType::IDENTIFIER, "Expected field name");
        consume(TokenType::SEMICOLON, "Expected ';' after field");
        fields.push_back({field_name.lexeme, field_type});
    }

    consume(TokenType::RBRACE, "Expected '}' after class body");
    return std::make_shared<ClassDecl>(class_name, fields, methods, name_token.line, name_token.column);
}

std::shared_ptr<Function> Parser::function() {
    consume(TokenType::FUNC, "Expected 'func'");

    // New function scope for simple instance-method resolution.
    var_classes.clear();
    
    Type return_type = parseType();
    if (return_type == Type::UNKNOWN) {
        throw ParseError("Expected return type");
    }
    
    Token name_token = consume(TokenType::IDENTIFIER, "Expected function name");
    std::string name = name_token.lexeme;
    
    consume(TokenType::LPAREN, "Expected '(' after function name");
    
    // Parse parameters
    std::vector<std::pair<std::string, Type>> parameters;
    if (!check(TokenType::RPAREN)) {
        do {
            // Parameter can be just identifier (type inferred)
            if (check(TokenType::IDENTIFIER) && peek().type != TokenType::STAR) {
                Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
                if (match(TokenType::LBRACKET)) {
                    consume(TokenType::RBRACKET, "Expected ']'");
                }
                parameters.push_back({param_name.lexeme, Type::UNKNOWN});
                continue;
            }

            Type param_type = parseType();
            if (param_type == Type::UNKNOWN) {
                Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
                parameters.push_back({param_name.lexeme, Type::UNKNOWN});
                continue;
            }

            Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
            if (match(TokenType::LBRACKET)) {
                consume(TokenType::RBRACKET, "Expected ']'");
            }
            parameters.push_back({param_name.lexeme, param_type});
        } while (match(TokenType::COMMA));
    }
    
    consume(TokenType::RPAREN, "Expected ')' after parameters");
    consume(TokenType::LBRACE, "Expected '{' before function body");
    
    std::vector<StmtPtr> body = blockStatements();
    
    consume(TokenType::RBRACE, "Expected '}'");
    
    return std::make_shared<Function>(name, return_type, parameters, body, 
                                     name_token.line, name_token.column);
}

std::shared_ptr<Function> Parser::method(const std::string& class_name) {
    consume(TokenType::FUNC, "Expected 'func'");

    // New function scope for simple instance-method resolution.
    var_classes.clear();

    Type return_type = parseType();
    if (return_type == Type::UNKNOWN) {
        throw ParseError("Expected return type");
    }

    Token name_token = consume(TokenType::IDENTIFIER, "Expected function name");
    std::string name = name_token.lexeme;

    consume(TokenType::LPAREN, "Expected '(' after function name");

    std::vector<std::pair<std::string, Type>> parameters;
    if (!check(TokenType::RPAREN)) {
        do {
            if (check(TokenType::IDENTIFIER) && peek().type != TokenType::STAR) {
                Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
                if (match(TokenType::LBRACKET)) {
                    consume(TokenType::RBRACKET, "Expected ']'");
                }
                parameters.push_back({param_name.lexeme, Type::UNKNOWN});
                continue;
            }

            Type param_type = parseType();
            if (param_type == Type::UNKNOWN) {
                Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
                parameters.push_back({param_name.lexeme, Type::UNKNOWN});
                continue;
            }

            Token param_name = consume(TokenType::IDENTIFIER, "Expected parameter name");
            if (match(TokenType::LBRACKET)) {
                consume(TokenType::RBRACKET, "Expected ']'");
            }
            parameters.push_back({param_name.lexeme, param_type});
        } while (match(TokenType::COMMA));
    }

    consume(TokenType::RPAREN, "Expected ')' after parameters");

    // Convention: first parameter is the instance pointer for field access resolution.
    if (!parameters.empty()) {
        var_classes[parameters[0].first] = class_name;
    }

    consume(TokenType::LBRACE, "Expected '{' before function body");

    std::vector<StmtPtr> body = blockStatements();

    consume(TokenType::RBRACE, "Expected '}'");

    return std::make_shared<Function>(name, return_type, parameters, body,
                                      name_token.line, name_token.column);
}

std::vector<StmtPtr> Parser::blockStatements() {
    std::vector<StmtPtr> statements;
    
    while (!check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
        statements.push_back(statement());
    }
    
    return statements;
}

StmtPtr Parser::statement() {
    if (check(TokenType::IF)) return ifStatement();
    if (check(TokenType::WHILE)) return whileStatement();
    if (check(TokenType::FOR)) return forStatement();
    if (check(TokenType::DO)) return doWhileStatement();
    if (check(TokenType::SWITCH)) return switchStatement();
    if (check(TokenType::TRY)) return tryCatchStatement();
    if (check(TokenType::STRUCT)) return structDeclaration();
    if (check(TokenType::IMPORT)) return importStatement();
    if (check(TokenType::ASM)) return asmStatement();
    if (check(TokenType::RETURN)) return returnStatement();
    if (check(TokenType::BREAK)) {
        Token t = current();
        advance();
        consume(TokenType::SEMICOLON, "Expected ';' after 'break'");
        return std::make_shared<BreakStmt>(t.line, t.column);
    }
    if (check(TokenType::CONTINUE)) {
        Token t = current();
        advance();
        consume(TokenType::SEMICOLON, "Expected ';' after 'continue'");
        return std::make_shared<ContinueStmt>(t.line, t.column);
    }
    if (check(TokenType::THROW)) {
        Token t = current();
        advance();
        ExprPtr msg = expression();
        consume(TokenType::SEMICOLON, "Expected ';' after 'throw'");
        return std::make_shared<ThrowStmt>(msg, t.line, t.column);
    }
    if (check(TokenType::LBRACE)) {
        advance();
        auto stmts = blockStatements();
        consume(TokenType::RBRACE, "Expected '}'");
        return std::make_shared<Block>(stmts, current().line, current().column);
    }

    if (auto decl = varDeclaration()) return decl;
    return expressionStatement();
}

StmtPtr Parser::asmStatement() {
    Token asm_tok = current();
    advance();
    consume(TokenType::LBRACE, "Expected '{' after 'asm'");

    // Collect tokens until matching '}' and reconstruct text.
    std::string text;
    int last_line = asm_tok.line;
    while (!check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
        Token t = current();
        // Insert newline when token line changes.
        if (!text.empty()) {
            if (t.line != last_line) text += "\n";
            else text += " ";
        }
        text += t.lexeme;
        last_line = t.line;
        advance();
    }

    consume(TokenType::RBRACE, "Expected '}' to close asm block");
    return std::make_shared<AsmStmt>(text, asm_tok.line, asm_tok.column);
}

StmtPtr Parser::varDeclaration() {
    int line = current().line;
    int col = current().column;
    
    size_t checkpoint = pos;
    
    auto isTypeStart = [](TokenType t) {
        return t == TokenType::INT || t == TokenType::FLOAT || t == TokenType::STRING_TYPE ||
               t == TokenType::BOOL || t == TokenType::CHAR || t == TokenType::VOID ||
               t == TokenType::CONST;
    };

    Type explicit_type = Type::UNKNOWN;
    bool has_explicit_type = false;
    if (isTypeStart(current().type)) {
        explicit_type = parseType();
        has_explicit_type = (explicit_type != Type::UNKNOWN);
    }

    if (has_explicit_type) {
        if (check(TokenType::IDENTIFIER)) {
            Token name_token = current();
            std::string name = name_token.lexeme;
            advance();

            consume(TokenType::IS, "Expected 'is' in variable binding");
            ExprPtr init = expression();
            consume(TokenType::SEMICOLON, "Expected ';'");
            return std::make_shared<VariableDecl>(name, explicit_type, init,
                                                  has_explicit_type, line, col);
        }
    }
    
    pos = checkpoint;
    return nullptr;
}

StmtPtr Parser::ifStatement() {
    Token if_token = current();
    advance();
    consume(TokenType::LPAREN, "Expected '(' after 'if'");
    ExprPtr condition = expression();
    consume(TokenType::RPAREN, "Expected ')'");
    consume(TokenType::LBRACE, "Expected '{' after if condition");
    
    auto then_stmts = blockStatements();
    auto then_branch = std::make_shared<Block>(then_stmts, if_token.line, if_token.column);
    
    consume(TokenType::RBRACE, "Expected '}'");
    
    StmtPtr else_branch = nullptr;
    if (match(TokenType::ELSE)) {
        // Support `else if (...) { ... }` as a single syntactic construct.
        if (check(TokenType::IF)) {
            else_branch = ifStatement();
        } else {
            consume(TokenType::LBRACE, "Expected '{' after 'else'");
            auto else_stmts = blockStatements();
            else_branch = std::make_shared<Block>(else_stmts, if_token.line, if_token.column);
            consume(TokenType::RBRACE, "Expected '}'");
        }
    }
    
    return std::make_shared<IfStmt>(condition, then_branch, else_branch, 
                                   if_token.line, if_token.column);
}

StmtPtr Parser::whileStatement() {
    Token while_token = current();
    advance();
    consume(TokenType::LPAREN, "Expected '(' after 'while'");
    ExprPtr condition = expression();
    consume(TokenType::RPAREN, "Expected ')'");
    consume(TokenType::LBRACE, "Expected '{' before while body");
    
    auto body_stmts = blockStatements();
    auto body = std::make_shared<Block>(body_stmts, while_token.line, while_token.column);
    
    consume(TokenType::RBRACE, "Expected '}'");
    
    return std::make_shared<WhileStmt>(condition, body, while_token.line, while_token.column);
}

StmtPtr Parser::forStatement() {
    Token for_token = current();
    advance();
    consume(TokenType::LPAREN, "Expected '(' after 'for'");
    
    // Init
    StmtPtr init = nullptr;
    if (!check(TokenType::SEMICOLON)) {
        int init_line = current().line;
        int init_col = current().column;
        
        Type init_type = parseType();
        bool has_type = (init_type != Type::UNKNOWN);
        
        if (check(TokenType::IDENTIFIER)) {
            Token var_name = current();
            advance();
            if (match(TokenType::IS)) {
                ExprPtr var_init = expression();
                init = std::make_shared<VariableDecl>(var_name.lexeme, init_type, var_init, has_type, init_line, init_col);
            } else {
                pos--; // Back up
                init = expressionStatement();
            }
        } else {
            pos--; // Back up
            init = expressionStatement();
        }
    } else {
        advance(); // Skip semicolon
    }
    
    if (!check(TokenType::SEMICOLON)) {
        // This is wrong, but let's be lenient
    }
    if (init) {
        consume(TokenType::SEMICOLON, "Expected ';' after for initializer");
    } else {
        consume(TokenType::SEMICOLON, "Expected ';'");
    }
    
    // Condition
    ExprPtr condition = nullptr;
    if (!check(TokenType::SEMICOLON)) {
        condition = expression();
    }
    consume(TokenType::SEMICOLON, "Expected ';' after for condition");
    
    // Increment
    ExprPtr increment = nullptr;
    if (!check(TokenType::RPAREN)) {
        increment = expression();
    }
    consume(TokenType::RPAREN, "Expected ')' after for");
    
    consume(TokenType::LBRACE, "Expected '{' before for body");
    auto body_stmts = blockStatements();
    auto body = std::make_shared<Block>(body_stmts, for_token.line, for_token.column);
    consume(TokenType::RBRACE, "Expected '}'");
    
    return std::make_shared<ForStmt>(init, condition, increment, body, 
                                    for_token.line, for_token.column);
}

StmtPtr Parser::doWhileStatement() {
    Token do_token = current();
    advance();
    consume(TokenType::LBRACE, "Expected '{' after 'do'");
    
    auto body_stmts = blockStatements();
    auto body = std::make_shared<Block>(body_stmts, do_token.line, do_token.column);
    
    consume(TokenType::RBRACE, "Expected '}'");
    consume(TokenType::WHILE, "Expected 'while' after do-while body");
    consume(TokenType::LPAREN, "Expected '(' after 'while'");
    ExprPtr condition = expression();
    consume(TokenType::RPAREN, "Expected ')'");
    consume(TokenType::SEMICOLON, "Expected ';'");
    
    return std::make_shared<DoWhileStmt>(body, condition, do_token.line, do_token.column);
}

StmtPtr Parser::switchStatement() {
    Token switch_token = current();
    advance();
    consume(TokenType::LPAREN, "Expected '(' after 'switch'");
    ExprPtr condition = expression();
    consume(TokenType::RPAREN, "Expected ')'");
    consume(TokenType::LBRACE, "Expected '{' before switch body");
    
    std::vector<std::pair<ExprPtr, StmtPtr>> cases;
    StmtPtr default_case = nullptr;
    
    while (!check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
        if (match(TokenType::CASE)) {
            ExprPtr case_value = expression();
            consume(TokenType::COLON, "Expected ':' after case value");
            
            std::vector<StmtPtr> case_stmts;
            while (!check(TokenType::CASE) && !check(TokenType::DEFAULT) && 
                   !check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
                case_stmts.push_back(statement());
            }
            
            auto case_body = std::make_shared<Block>(case_stmts, case_value->line, case_value->column);
            cases.push_back({case_value, case_body});
        } else if (match(TokenType::DEFAULT)) {
            consume(TokenType::COLON, "Expected ':' after default");
            
            std::vector<StmtPtr> default_stmts;
            while (!check(TokenType::CASE) && !check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
                default_stmts.push_back(statement());
            }
            
            default_case = std::make_shared<Block>(default_stmts, current().line, current().column);
        } else {
            advance(); // Skip unknown token
        }
    }
    
    consume(TokenType::RBRACE, "Expected '}'");
    
    return std::make_shared<SwitchStmt>(condition, cases, default_case, 
                                        switch_token.line, switch_token.column);
}

StmtPtr Parser::tryCatchStatement() {
    Token try_token = current();
    advance();
    consume(TokenType::LBRACE, "Expected '{' after 'try'");
    
    auto try_stmts = blockStatements();
    auto try_block = std::make_shared<Block>(try_stmts, try_token.line, try_token.column);
    
    consume(TokenType::RBRACE, "Expected '}'");
    consume(TokenType::CATCH, "Expected 'catch'");
    consume(TokenType::LPAREN, "Expected '(' after 'catch'");
    
    std::string exception_var = "e";
    if (match(TokenType::IDENTIFIER)) {
        exception_var = tokens[pos - 1].lexeme;
    }
    
    consume(TokenType::RPAREN, "Expected ')'");
    consume(TokenType::LBRACE, "Expected '{' after catch");
    
    auto catch_stmts = blockStatements();
    auto catch_block = std::make_shared<Block>(catch_stmts, current().line, current().column);
    
    consume(TokenType::RBRACE, "Expected '}'");
    
    return std::make_shared<TryCatchStmt>(try_block, catch_block, exception_var, 
                                          try_token.line, try_token.column);
}

StmtPtr Parser::structDeclaration() {
    Token struct_token = current();
    advance();
    
    std::string name = "";
    if (match(TokenType::IDENTIFIER)) {
        name = tokens[pos - 1].lexeme;
    }
    
    consume(TokenType::LBRACE, "Expected '{' after struct name");
    
    std::vector<std::pair<std::string, Type>> fields;
    while (!check(TokenType::RBRACE) && !check(TokenType::EOF_TOKEN)) {
        Type field_type = parseType();
        if (field_type != Type::UNKNOWN) {
            if (match(TokenType::IDENTIFIER)) {
                std::string field_name = tokens[pos - 1].lexeme;
                consume(TokenType::SEMICOLON, "Expected ';' after field");
                fields.push_back({field_name, field_type});
            } else {
                throw ParseError("Expected field name");
            }
        } else {
            advance(); // Skip unknown
        }
    }
    
    consume(TokenType::RBRACE, "Expected '}'");
    consume(TokenType::SEMICOLON, "Expected ';'");
    
    return std::make_shared<StructDecl>(name, fields, struct_token.line, struct_token.column);
}

StmtPtr Parser::importStatement() {
    Token import_token = current();
    advance();
    
    std::string path = "";
    std::string alias = "";
    
    if (match(TokenType::STRING)) {
        path = tokens[pos - 1].lexeme;
    }
    
    if (match(TokenType::IDENTIFIER)) {
        alias = tokens[pos - 1].lexeme;
    }
    
    consume(TokenType::SEMICOLON, "Expected ';'");
    
    return std::make_shared<ImportStmt>(path, alias, import_token.line, import_token.column);
}

StmtPtr Parser::returnStatement() {
    Token ret_token = current();
    advance();
    
    ExprPtr value = nullptr;
    if (!check(TokenType::SEMICOLON)) {
        value = expression();
    }
    consume(TokenType::SEMICOLON, "Expected ';' after return");
    
    return std::make_shared<ReturnStmt>(value, ret_token.line, ret_token.column);
}

StmtPtr Parser::expressionStatement() {
    int line = current().line;
    int col = current().column;
    ExprPtr expr = expression();
    consume(TokenType::SEMICOLON, "Expected ';' after expression");
    return std::make_shared<ExpressionStmt>(expr, line, col);
}

ExprPtr Parser::expression() {
    return assignment();
}

static bool isAssignableTarget(const ExprPtr& expr) {
    if (!expr) return false;
    if (std::dynamic_pointer_cast<Variable>(expr)) return true;
    if (std::dynamic_pointer_cast<DerefExpr>(expr)) return true;
    if (std::dynamic_pointer_cast<MemberAccessExpr>(expr)) return true;
    return false;
}

ExprPtr Parser::assignment() {
    ExprPtr expr = ternary();
    
    if (match(TokenType::IS)) {
        if (!isAssignableTarget(expr)) {
            throw ParseError("Invalid binding target");
        }
        ExprPtr right = assignment();

        // Track simple class instantiation patterns:
        //   obj is ClassName();
        if (auto lhs_var = std::dynamic_pointer_cast<Variable>(expr)) {
            if (auto call = std::dynamic_pointer_cast<Call>(right)) {
                const std::string prefix = "__zn_new_";
                if (call->name.rfind(prefix, 0) == 0) {
                    std::string cls = call->name.substr(prefix.size());
                    var_classes[lhs_var->name] = cls;
                }
                const std::string cprefix = "__zn_copy_";
                if (call->name.rfind(cprefix, 0) == 0) {
                    std::string cls = call->name.substr(cprefix.size());
                    var_classes[lhs_var->name] = cls;
                }
            } else if (auto rhs_var = std::dynamic_pointer_cast<Variable>(right)) {
                if (auto it = var_classes.find(rhs_var->name); it != var_classes.end()) {
                    var_classes[lhs_var->name] = it->second;
                }
            }
        }

        // Create a bind/rebind operation (handled specially in codegen)
        return std::make_shared<BinaryOp>(expr, TokenType::IS, right, 
                                         expr->line, expr->column);
    }
    
    return expr;
}

ExprPtr Parser::ternary() {
    ExprPtr expr = logicalOr();
    
    if (match(TokenType::QUESTION)) {
        int line = current().line;
        int col = current().column;
        ExprPtr then_expr = expression();
        consume(TokenType::COLON, "Expected ':' in ternary");
        ExprPtr else_expr = ternary();
        expr = std::make_shared<TernaryExpr>(expr, then_expr, else_expr, line, col);
    }
    
    return expr;
}

ExprPtr Parser::logicalOr() {
    ExprPtr expr = logicalAnd();
    
    while (match(TokenType::OR)) {
        int line = current().line;
        int col = current().column;
        ExprPtr right = logicalAnd();
        expr = std::make_shared<BinaryOp>(expr, TokenType::OR, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::logicalAnd() {
    ExprPtr expr = equality();
    
    while (match(TokenType::AND)) {
        int line = current().line;
        int col = current().column;
        ExprPtr right = equality();
        expr = std::make_shared<BinaryOp>(expr, TokenType::AND, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::equality() {
    ExprPtr expr = comparison();
    
    while (check(TokenType::EQUAL_EQUAL) || check(TokenType::NOT_EQUAL)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr right = comparison();
        expr = std::make_shared<BinaryOp>(expr, op, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::comparison() {
    ExprPtr expr = bitwiseOr();
    
    while (check(TokenType::LESS) || check(TokenType::GREATER) || 
           check(TokenType::LESS_EQUAL) || check(TokenType::GREATER_EQUAL)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr right = bitwiseOr();
        expr = std::make_shared<BinaryOp>(expr, op, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::bitwiseOr() {
    ExprPtr expr = bitwiseXor();
    
    while (match(TokenType::PIPE)) {
        int line = current().line;
        int col = current().column;
        ExprPtr right = bitwiseXor();
        expr = std::make_shared<BinaryOp>(expr, TokenType::PIPE, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::bitwiseXor() {
    ExprPtr expr = bitwiseAnd();
    
    while (match(TokenType::CARET)) {
        int line = current().line;
        int col = current().column;
        ExprPtr right = bitwiseAnd();
        expr = std::make_shared<BinaryOp>(expr, TokenType::CARET, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::bitwiseAnd() {
    ExprPtr expr = shift();
    
    while (match(TokenType::AMPERSAND)) {
        int line = current().line;
        int col = current().column;
        ExprPtr right = shift();
        expr = std::make_shared<BinaryOp>(expr, TokenType::AMPERSAND, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::shift() {
    ExprPtr expr = additive();
    
    while (check(TokenType::LSHIFT) || check(TokenType::RSHIFT)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr right = additive();
        expr = std::make_shared<BinaryOp>(expr, op, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::additive() {
    ExprPtr expr = multiplicative();
    
    while (check(TokenType::PLUS) || check(TokenType::MINUS)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr right = multiplicative();
        expr = std::make_shared<BinaryOp>(expr, op, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::multiplicative() {
    ExprPtr expr = unary();
    
    while (check(TokenType::STAR) || check(TokenType::SLASH) || check(TokenType::PERCENT)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr right = unary();
        expr = std::make_shared<BinaryOp>(expr, op, right, line, col);
    }
    
    return expr;
}

ExprPtr Parser::unary() {
    if (match(TokenType::AMPERSAND)) {
        Token amp = tokens[pos - 1];
        ExprPtr operand = unary();
        if (auto var = std::dynamic_pointer_cast<Variable>(operand)) {
            return std::make_shared<AddressOfExpr>(var->name, amp.line, amp.column);
        }
        throw ParseError("Address-of operator '&' requires a variable");
    }

    if (match(TokenType::STAR)) {
        Token star = tokens[pos - 1];
        ExprPtr operand = unary();
        return std::make_shared<DerefExpr>(operand, star.line, star.column);
    }

    if (check(TokenType::NOT) || check(TokenType::MINUS) || check(TokenType::TILDE)) {
        TokenType op = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        ExprPtr expr = unary();
        return std::make_shared<UnaryOp>(op, expr, line, col);
    }
    
    return cast();
}

ExprPtr Parser::cast() {
    // Check for type cast: int(expr), float(expr), etc.
    if (check(TokenType::INT) || check(TokenType::FLOAT) || check(TokenType::STRING_TYPE) ||
        check(TokenType::BOOL) || check(TokenType::CHAR)) {
        TokenType cast_type = current().type;
        int line = current().line;
        int col = current().column;
        advance();
        
        if (match(TokenType::LPAREN)) {
            ExprPtr expr = expression();
            consume(TokenType::RPAREN, "Expected ')'");
            
            Type target_type = Type::UNKNOWN;
            if (cast_type == TokenType::INT) target_type = Type::INT;
            else if (cast_type == TokenType::FLOAT) target_type = Type::FLOAT;
            else if (cast_type == TokenType::STRING_TYPE) target_type = Type::STRING;
            else if (cast_type == TokenType::BOOL) target_type = Type::BOOL;
            else if (cast_type == TokenType::CHAR) target_type = Type::CHAR;
            
            return std::make_shared<CastExpr>(expr, target_type, line, col);
        }
        // If not a cast, put the token back
        pos--;
    }
    
    return call();
}

ExprPtr Parser::call() {
    ExprPtr expr = memberAccess();
    
    while (true) {
        if (match(TokenType::LPAREN)) {
            // Function call
            if (auto var = std::dynamic_pointer_cast<Variable>(expr)) {
                std::vector<ExprPtr> args;
                if (!check(TokenType::RPAREN)) {
                    do {
                        args.push_back(expression());
                    } while (match(TokenType::COMMA));
                }
                consume(TokenType::RPAREN, "Expected ')' after arguments");
                // Constructor-style call: ClassName()
                if (class_names.find(var->name) != class_names.end()) {
                    if (!args.empty()) throw ParseError("Class constructors do not take arguments yet");
                    expr = std::make_shared<Call>("__zn_new_" + var->name, args, var->line, var->column);
                } else {
                    // copy(ClassInstanceVar) -> __zn_copy_Class(ClassInstanceVar)
                    if (var->name == "copy" && args.size() == 1) {
                        if (auto av = std::dynamic_pointer_cast<Variable>(args[0])) {
                            if (auto it = var_classes.find(av->name); it != var_classes.end()) {
                                expr = std::make_shared<Call>("__zn_copy_" + it->second, args, var->line, var->column);
                                break;
                            }
                        }
                    }
                    expr = std::make_shared<Call>(var->name, args, var->line, var->column);
                }
            } else if (auto member = std::dynamic_pointer_cast<MemberAccessExpr>(expr)) {
                // Static class call: Class.func(...)
                auto base_var = std::dynamic_pointer_cast<Variable>(member->base);
                if (!base_var) {
                    throw ParseError("Can only call Class.func(...) or function names");
                }

                std::vector<ExprPtr> args;
                if (!check(TokenType::RPAREN)) {
                    do {
                        args.push_back(expression());
                    } while (match(TokenType::COMMA));
                }
                consume(TokenType::RPAREN, "Expected ')' after arguments");

                // Resolve:
                //   Class.func(args...)        -> Class__func(args...)
                //   obj.func(args...)          -> Class__func(obj, args...)  (obj previously bound to ClassName())
                if (class_names.find(base_var->name) != class_names.end()) {
                    std::string mangled = base_var->name + "__" + member->field;
                    expr = std::make_shared<Call>(mangled, args, member->line, member->column);
                } else {
                    auto it = var_classes.find(base_var->name);
                    if (it == var_classes.end()) {
                        throw ParseError("Unknown class instance for method call");
                    }
                    std::string mangled = it->second + "__" + member->field;
                    // Insert implicit self as arg0
                    args.insert(args.begin(), member->base);
                    expr = std::make_shared<Call>(mangled, args, member->line, member->column);
                }
            } else {
                throw ParseError("Can only call function names");
            }
        } else if (match(TokenType::LBRACKET)) {
            // Array access
            if (auto var = std::dynamic_pointer_cast<Variable>(expr)) {
                ExprPtr index = expression();
                consume(TokenType::RBRACKET, "Expected ']'");
                expr = std::make_shared<ArrayAccess>(var->name, index, var->line, var->column);
            } else {
                throw ParseError("Can only index arrays");
            }
        } else {
            break;
        }
    }
    
    return expr;
}

ExprPtr Parser::memberAccess() {
    ExprPtr expr = primary();
    
    while (check(TokenType::DOT) || check(TokenType::ARROW) || check(TokenType::LBRACKET)) {
        if (match(TokenType::DOT)) {
            Token field_tok = consume(TokenType::IDENTIFIER, "Expected field name after '.'");
            std::string resolved;
            if (auto base_var = std::dynamic_pointer_cast<Variable>(expr)) {
                if (auto it = var_classes.find(base_var->name); it != var_classes.end()) {
                    resolved = it->second;
                }
            }
            expr = std::make_shared<MemberAccessExpr>(ASTNodeType::MEMBER_ACCESS, expr, field_tok.lexeme,
                                                      field_tok.line, field_tok.column, resolved);
        } else if (match(TokenType::ARROW)) {
            Token field_tok = consume(TokenType::IDENTIFIER, "Expected field name after '->'");
            std::string resolved;
            if (auto base_var = std::dynamic_pointer_cast<Variable>(expr)) {
                if (auto it = var_classes.find(base_var->name); it != var_classes.end()) {
                    resolved = it->second;
                }
            }
            expr = std::make_shared<MemberAccessExpr>(ASTNodeType::PTR_MEMBER_ACCESS, expr, field_tok.lexeme,
                                                      field_tok.line, field_tok.column, resolved);
        } else if (match(TokenType::LBRACKET)) {
            // Array access on result of expression
            ExprPtr index = expression();
            consume(TokenType::RBRACKET, "Expected ']'");
            // This is a more complex case - for now just create array access with name
            if (auto var = std::dynamic_pointer_cast<Variable>(expr)) {
                expr = std::make_shared<ArrayAccess>(var->name, index, var->line, var->column);
            }
        }
    }
    
    return expr;
}

ExprPtr Parser::primary() {
    int line = current().line;
    int col = current().column;
    
    if (match(TokenType::TRUE)) {
        return std::make_shared<BoolLiteral>(true, line, col);
    }
    
    if (match(TokenType::FALSE)) {
        return std::make_shared<BoolLiteral>(false, line, col);
    }
    
    if (match(TokenType::NUMBER)) {
        try {
            long long val = std::stoll(tokens[pos - 1].lexeme);
            return std::make_shared<NumberLiteral>(val, line, col);
        } catch (...) {
            throw ParseError("Invalid number");
        }
    }
    
    if (match(TokenType::FLOAT_NUMBER)) {
        try {
            double val = std::stod(tokens[pos - 1].lexeme);
            return std::make_shared<FloatLiteral>(val, line, col);
        } catch (...) {
            throw ParseError("Invalid float");
        }
    }
    
    if (match(TokenType::STRING)) {
        return std::make_shared<StringLiteral>(tokens[pos - 1].lexeme, line, col);
    }

    if (match(TokenType::NULLPTR)) {
        return std::make_shared<NullptrLiteral>(line, col);
    }
    
    // Character literal
    if (match(TokenType::CHAR_LITERAL)) {
        return std::make_shared<CharLiteral>(tokens[pos - 1].lexeme[0], line, col);
    }
    
    // Array literal: {1, 2, 3}
    if (match(TokenType::LBRACE)) {
        std::vector<ExprPtr> elements;
        if (!check(TokenType::RBRACE)) {
            do {
                elements.push_back(expression());
            } while (match(TokenType::COMMA));
        }
        consume(TokenType::RBRACE, "Expected '}'");
        return std::make_shared<ArrayLiteral>(elements, line, col);
    }
    
    if (match(TokenType::IDENTIFIER)) {
        return std::make_shared<Variable>(tokens[pos - 1].lexeme, line, col);
    }
    
    // Handle built-in functions as variables (they'll be called like functions)
    if (match(TokenType::TXTOUT)) {
        return std::make_shared<Variable>("txtout", line, col);
    }
    
    if (match(TokenType::TXTOUT_NL)) {
        return std::make_shared<Variable>("txtout_nl", line, col);
    }
    
    if (match(TokenType::TXTIN)) {
        return std::make_shared<Variable>("txtin", line, col);
    }
    
    if (match(TokenType::OUT)) {
        return std::make_shared<Variable>("out", line, col);
    }
    
    if (match(TokenType::LPAREN)) {
        ExprPtr expr = expression();
        consume(TokenType::RPAREN, "Expected ')'");
        return expr;
    }
    
    throw ParseError("Unexpected token in expression");
}

std::unique_ptr<Program> Parser::parse() {
    try {
        return program();
    } catch (const ParseError& e) {
        throw;
    }
}
