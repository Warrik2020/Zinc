#pragma once

#include "ast.h"
#include <vector>
#include <string>

class Lexer {
private:
    std::string source;
    size_t pos;
    int line;
    int column;
    std::vector<Token> tokens;
    
    char current();
    char peek(int offset = 1);
    void advance();
    void skipWhitespace();
    void skipComment();
    Token makeToken(TokenType type, const std::string& lexeme, int l, int c);
    Token scanString();
    Token scanNumber();
    Token scanIdentifier();
    Token scanEscapedIdentifier();
    
public:
    Lexer(const std::string& src);
    std::vector<Token> tokenize();
};
