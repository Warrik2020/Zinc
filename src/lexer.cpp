#include "lexer.h"
#include <cctype>
#include <unordered_map>

Lexer::Lexer(const std::string& src)
    : source(src), pos(0), line(1), column(1) {}

char Lexer::current() {
    if (pos >= source.length()) return '\0';
    return source[pos];
}

char Lexer::peek(int offset) {
    if (pos + offset >= source.length()) return '\0';
    return source[pos + offset];
}

void Lexer::advance() {
    if (pos < source.length()) {
        if (source[pos] == '\n') {
            line++;
            column = 1;
        } else {
            column++;
        }
        pos++;
    }
}

void Lexer::skipWhitespace() {
    while (current() && std::isspace(current())) {
        advance();
    }
}

void Lexer::skipComment() {
    if (current() == '#') {
        // Check for multi-line comment ###
        if (peek() == '#' && peek(2) == '#') {
            // Skip opening ###
            advance(); advance(); advance();
            
            // Skip until closing ###
            while (current() != '\0') {
                if (current() == '#' && peek() == '#' && peek(2) == '#') {
                    advance(); advance(); advance();
                    break;
                }
                advance();
            }
        } else {
            // Single line comment
            while (current() != '\0' && current() != '\n') {
                advance();
            }
        }
    }
}

Token Lexer::makeToken(TokenType type, const std::string& lexeme, int l, int c) {
    return Token(type, lexeme, l, c);
}

Token Lexer::scanString() {
    int start_line = line;
    int start_col = column;
    advance(); // Skip opening "
    
    std::string value;
    while (current() != '"' && current() != '\0') {
        if (current() == '\\') {
            advance();
            switch (current()) {
                case 'n': value += '\n'; break;
                case 't': value += '\t'; break;
                case '\\': value += '\\'; break;
                case '"': value += '"'; break;
                default: value += current(); break;
            }
        } else {
            value += current();
        }
        advance();
    }
    
    if (current() == '"') {
        advance(); // Skip closing "
    }
    
    return makeToken(TokenType::STRING, value, start_line, start_col);
}

Token Lexer::scanNumber() {
    int start_line = line;
    int start_col = column;
    std::string value;
    bool is_float = false;
    
    // Handle hex, octal, binary
    if (current() == '0') {
        value += current();
        advance();
        
        if (current() == 'x' || current() == 'X') {
            // Hex
            value += current();
            advance();
            while (std::isxdigit(current())) {
                value += current();
                advance();
            }
            return makeToken(TokenType::NUMBER, value, start_line, start_col);
        } else if (current() == 'o' || current() == 'O') {
            // Octal
            value += current();
            advance();
            while (current() >= '0' && current() <= '7') {
                value += current();
                advance();
            }
            return makeToken(TokenType::NUMBER, value, start_line, start_col);
        } else if (current() == 'b' || current() == 'B') {
            // Binary
            value += current();
            advance();
            while (current() == '0' || current() == '1') {
                value += current();
                advance();
            }
            return makeToken(TokenType::NUMBER, value, start_line, start_col);
        }
    }
    
    // Decimal or float
    while (std::isdigit(current())) {
        value += current();
        advance();
    }
    
    if (current() == '.' && std::isdigit(peek())) {
        is_float = true;
        value += current();
        advance();
        while (std::isdigit(current())) {
            value += current();
            advance();
        }
    }
    
    // Scientific notation
    if (current() == 'e' || current() == 'E') {
        is_float = true;
        value += current();
        advance();
        if (current() == '+' || current() == '-') {
            value += current();
            advance();
        }
        while (std::isdigit(current())) {
            value += current();
            advance();
        }
    }
    
    TokenType type = is_float ? TokenType::FLOAT_NUMBER : TokenType::NUMBER;
    return makeToken(type, value, start_line, start_col);
}

Token Lexer::scanIdentifier() {
    int start_line = line;
    int start_col = column;
    std::string value;
    
    while (std::isalnum(current()) || current() == '_') {
        value += current();
        advance();
    }
    
    // Check if it's a keyword
    static const std::unordered_map<std::string, TokenType> keywords = {
        {"func", TokenType::FUNC},
        {"int", TokenType::INT},
        {"float", TokenType::FLOAT},
        {"string", TokenType::STRING_TYPE},
        {"bool", TokenType::BOOL},
        {"char", TokenType::CHAR},
        {"void", TokenType::VOID},
        {"if", TokenType::IF},
        {"else", TokenType::ELSE},
        {"while", TokenType::WHILE},
        {"for", TokenType::FOR},
        {"break", TokenType::BREAK},
        {"continue", TokenType::CONTINUE},
        {"return", TokenType::RETURN},
        {"true", TokenType::TRUE},
        {"false", TokenType::FALSE},
        {"txtout", TokenType::TXTOUT},
        {"txtout_nl", TokenType::TXTOUT_NL},
        {"txtin", TokenType::TXTIN},
        {"out", TokenType::OUT},
        {"is", TokenType::IS},
        {"const", TokenType::CONST},
        {"struct", TokenType::STRUCT},
        {"switch", TokenType::SWITCH},
        {"case", TokenType::CASE},
        {"default", TokenType::DEFAULT},
        {"match", TokenType::MATCH},
        {"try", TokenType::TRY},
        {"catch", TokenType::CATCH},
        {"throw", TokenType::THROW},
        {"import", TokenType::IMPORT},
        {"export", TokenType::EXPORT},
        {"module", TokenType::MODULE},
        {"type", TokenType::TYPE},
        {"new", TokenType::NEW},
        {"delete", TokenType::DELETE},
        {"sizeof", TokenType::SIZEOF},
        {"do", TokenType::DO},
        {"nullptr", TokenType::NULLPTR},
        {"class", TokenType::CLASS},
        {"asm", TokenType::ASM},
    };
    
    auto it = keywords.find(value);
    if (it != keywords.end()) {
        return makeToken(it->second, value, start_line, start_col);
    }
    
    return makeToken(TokenType::IDENTIFIER, value, start_line, start_col);
}

Token Lexer::scanEscapedIdentifier() {
    int start_line = line;
    int start_col = column;
    advance(); // skip opening `

    std::string value;
    while (current() != '`' && current() != '\0' && current() != '\n') {
        value += current();
        advance();
    }

    if (current() == '`') {
        advance(); // skip closing `
        return makeToken(TokenType::IDENTIFIER, value, start_line, start_col);
    }

    // Unterminated escape; treat as unknown to surface an error in parsing.
    return makeToken(TokenType::UNKNOWN, value, start_line, start_col);
}

std::vector<Token> Lexer::tokenize() {
    while (current() != '\0') {
        skipWhitespace();
        
        if (current() == '\0') break;
        
        // Comments
        if (current() == '#') {
            skipComment();
            continue;
        }
        
        int tok_line = line;
        int tok_col = column;
        
        // String literals
        if (current() == '"') {
            tokens.push_back(scanString());
            continue;
        }
        
        // Single character literals
        if (current() == '\'') {
            advance(); // Skip opening '
            char ch = current();
            if (current() == '\\') {
                advance();
                switch (current()) {
                    case 'n': ch = '\n'; break;
                    case 't': ch = '\t'; break;
                    case '\\': ch = '\\'; break;
                    case '\'': ch = '\''; break;
                    case '0': ch = '\0'; break;
                    default: ch = current(); break;
                }
            }
            advance();
            if (current() == '\'') advance(); // Skip closing '
            tokens.push_back(makeToken(TokenType::CHAR_LITERAL, std::string(1, ch), tok_line, tok_col));
            continue;
        }
        
        // Numbers
        if (std::isdigit(current())) {
            tokens.push_back(scanNumber());
            continue;
        }
        
        // Identifiers and keywords
        if (current() == '`') {
            tokens.push_back(scanEscapedIdentifier());
            continue;
        }
        if (std::isalpha(current()) || current() == '_') {
            tokens.push_back(scanIdentifier());
            continue;
        }
        
        // Operators and punctuation
        switch (current()) {
            case '+': tokens.push_back(makeToken(TokenType::PLUS, "+", tok_line, tok_col)); advance(); break;
            case '-': 
                if (peek() == '>') {
                    tokens.push_back(makeToken(TokenType::ARROW, "->", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::MINUS, "-", tok_line, tok_col));
                    advance();
                }
                break;
            case '*': tokens.push_back(makeToken(TokenType::STAR, "*", tok_line, tok_col)); advance(); break;
            case '/': tokens.push_back(makeToken(TokenType::SLASH, "/", tok_line, tok_col)); advance(); break;
            case '%': tokens.push_back(makeToken(TokenType::PERCENT, "%", tok_line, tok_col)); advance(); break;
            
            case '!':
                if (peek() == '=') {
                    tokens.push_back(makeToken(TokenType::NOT_EQUAL, "!=", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::NOT, "!", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '=':
                if (peek() == '=') {
                    tokens.push_back(makeToken(TokenType::EQUAL_EQUAL, "==", tok_line, tok_col));
                    advance(); advance();
                } else {
                    // Zinc uses `is` for assignment; single '=' is not part of the grammar.
                    tokens.push_back(makeToken(TokenType::UNKNOWN, "=", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '<':
                if (peek() == '<') {
                    tokens.push_back(makeToken(TokenType::LSHIFT, "<<", tok_line, tok_col));
                    advance(); advance();
                } else if (peek() == '=') {
                    tokens.push_back(makeToken(TokenType::LESS_EQUAL, "<=", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::LESS, "<", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '>':
                if (peek() == '>') {
                    tokens.push_back(makeToken(TokenType::RSHIFT, ">>", tok_line, tok_col));
                    advance(); advance();
                } else if (peek() == '=') {
                    tokens.push_back(makeToken(TokenType::GREATER_EQUAL, ">=", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::GREATER, ">", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '&':
                if (peek() == '&') {
                    tokens.push_back(makeToken(TokenType::AND, "&&", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::AMPERSAND, "&", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '|':
                if (peek() == '|') {
                    tokens.push_back(makeToken(TokenType::OR, "||", tok_line, tok_col));
                    advance(); advance();
                } else {
                    tokens.push_back(makeToken(TokenType::PIPE, "|", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '^':
                tokens.push_back(makeToken(TokenType::CARET, "^", tok_line, tok_col));
                advance();
                break;
                
            case '~':
                tokens.push_back(makeToken(TokenType::TILDE, "~", tok_line, tok_col));
                advance();
                break;
                
            case '?':
                tokens.push_back(makeToken(TokenType::QUESTION, "?", tok_line, tok_col));
                advance();
                break;
                
            case ':':
                tokens.push_back(makeToken(TokenType::COLON, ":", tok_line, tok_col));
                advance();
                break;
                
            case '.':
                if (std::isdigit(peek())) {
                    // Float number starting with dot
                    std::string value = "0.";
                    advance();
                    while (std::isdigit(current())) {
                        value += current();
                        advance();
                    }
                    tokens.push_back(makeToken(TokenType::FLOAT_NUMBER, value, tok_line, tok_col));
                } else {
                    tokens.push_back(makeToken(TokenType::DOT, ".", tok_line, tok_col));
                    advance();
                }
                break;
                
            case '(': tokens.push_back(makeToken(TokenType::LPAREN, "(", tok_line, tok_col)); advance(); break;
            case ')': tokens.push_back(makeToken(TokenType::RPAREN, ")", tok_line, tok_col)); advance(); break;
            case '{': tokens.push_back(makeToken(TokenType::LBRACE, "{", tok_line, tok_col)); advance(); break;
            case '}': tokens.push_back(makeToken(TokenType::RBRACE, "}", tok_line, tok_col)); advance(); break;
            case '[': tokens.push_back(makeToken(TokenType::LBRACKET, "[", tok_line, tok_col)); advance(); break;
            case ']': tokens.push_back(makeToken(TokenType::RBRACKET, "]", tok_line, tok_col)); advance(); break;
            case ';': tokens.push_back(makeToken(TokenType::SEMICOLON, ";", tok_line, tok_col)); advance(); break;
            case ',': tokens.push_back(makeToken(TokenType::COMMA, ",", tok_line, tok_col)); advance(); break;
            
            default:
                tokens.push_back(makeToken(TokenType::UNKNOWN, std::string(1, current()), tok_line, tok_col));
                advance();
                break;
        }
    }
    
    tokens.push_back(makeToken(TokenType::EOF_TOKEN, "", line, column));
    return tokens;
}
