cmake_minimum_required(VERSION 3.16)
project(Zinc VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -O2")

# Main compiler executable
add_executable(znc
    src-c/main.cpp
    src-c/lexer.cpp
    src-c/parser.cpp
    src-c/codegen.cpp
    src-c/ast.cpp
    src-c/typecheck.cpp
)

target_include_directories(znc PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src-c
    ${CMAKE_CURRENT_SOURCE_DIR}/runtime
)

# Optional: For testing
enable_testing()
