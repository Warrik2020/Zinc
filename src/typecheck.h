#pragma once

#include "ast.h"
#include <stdexcept>
#include <string>
#include <unordered_map>

class TypeError : public std::runtime_error {
public:
    TypeError(const std::string& msg) : std::runtime_error(msg) {}
};

class TypeChecker {
public:
    void check(const Program& program);

private:
    struct VarTypeInfo {
        Type type = Type::UNKNOWN;
        bool dynamic = false;
    };

    std::unordered_map<std::string, VarTypeInfo> vars;
    std::unordered_map<std::string, Type> function_returns;

    void checkFunction(const Function& func);
    void checkStatement(const StmtPtr& stmt);
    Type checkExpr(const ExprPtr& expr);

    static bool isNumeric(Type t) { return t == Type::INT || t == Type::FLOAT; }
    static std::string typeName(Type t);
};
