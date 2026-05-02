#include "lexer.h"
#include "parser.h"
#include "codegen.h"
#include "typecheck.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <cstring>
#include <filesystem>
#include <unordered_set>

void printUsage(const char* program) {
    std::cerr << "Usage: " << program << " <input.zn> [-o output_file] [--out-dir dir] [--emit-asm|--emit-obj] [--run]" << std::endl;
}

std::string readFile(const std::string& filename) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        throw std::runtime_error("Cannot open file: " + filename);
    }
    
    std::stringstream buffer;
    buffer << file.rdbuf();
    return buffer.str();
}

void writeFile(const std::string& filename, const std::string& content) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        throw std::runtime_error("Cannot write to file: " + filename);
    }
    file << content;
}

std::string getOutputFilename(const std::string& input_file) {
    std::filesystem::path in(input_file);
    std::string base = in.stem().string();
    std::filesystem::path out_dir = std::filesystem::current_path() / "build";
    std::filesystem::create_directories(out_dir);
    return (out_dir / (base + ".s")).string();
}

static std::string ltrim(std::string s) {
    size_t i = 0;
    while (i < s.size() && std::isspace(static_cast<unsigned char>(s[i]))) i++;
    s.erase(0, i);
    return s;
}

static bool parseImportLine(const std::string& line, std::string& out_path) {
    // Accept: import "path";
    std::string s = ltrim(line);
    if (s.rfind("import", 0) != 0) return false;
    s = s.substr(std::strlen("import"));
    s = ltrim(s);
    if (s.empty() || s[0] != '"') return false;
    size_t end = s.find('"', 1);
    if (end == std::string::npos) return false;
    out_path = s.substr(1, end - 1);
    return true;
}

static std::string loadSourceWithImports(const std::string& filename,
                                         std::unordered_set<std::string>& visited) {
    std::filesystem::path abs = std::filesystem::absolute(filename).lexically_normal();
    std::string key = abs.string();
    if (visited.find(key) != visited.end()) return "";
    visited.insert(key);

    std::string src = readFile(key);
    std::istringstream iss(src);
    std::string line;

    std::string imported_sources;
    std::string remainder;

    bool still_in_header = true;
    while (std::getline(iss, line)) {
        std::string import_path;
        if (still_in_header) {
            std::string trimmed = ltrim(line);
            bool is_blank = trimmed.empty();
            bool is_comment = (!trimmed.empty() && trimmed[0] == '#');

            if (parseImportLine(line, import_path)) {
                std::filesystem::path dep = abs.parent_path() / import_path;
                imported_sources += loadSourceWithImports(dep.string(), visited);
                imported_sources += "\n";
                continue; // drop the import line itself
            }

            // Module lines are allowed but currently ignored by the compiler front-end.
            if (trimmed.rfind("module", 0) == 0) {
                continue;
            }

            // Once we hit a real declaration, stop treating future lines as imports-only.
            if (!is_blank && !is_comment) {
                still_in_header = false;
            }
        }

        remainder += line;
        remainder += "\n";
    }

    // Put imported sources first so dependencies appear before use.
    return imported_sources + remainder;
}

static void printParseContext(const std::string& source, int line, int col) {
    if (line <= 0 || col <= 0) return;
    std::istringstream iss(source);
    std::string current_line;
    int cur = 1;
    while (std::getline(iss, current_line)) {
        if (cur == line) break;
        cur++;
    }
    if (cur != line) return;
    std::cerr << current_line << std::endl;
    int caret_pos = std::max(1, col);
    for (int i = 1; i < caret_pos; i++) std::cerr << ' ';
    std::cerr << '^' << std::endl;
}

int main(int argc, char* argv[]) {
    try {
        if (argc < 2) { // If no input file is provided
            printUsage(argv[0]);
            return 1;
        }
        
        std::string input_file = argv[1];
        std::string output_file;
        std::string out_dir;
        enum class EmitMode { ASM, OBJ, NONE } emit = EmitMode::NONE;
        bool run_after = false;
        
        // Parse command line options
        for (int i = 2; i < argc; i++) {
            if (std::strcmp(argv[i], "-o") == 0) {
                if (i + 1 >= argc) {
                    std::cerr << "Error: -o requires an argument" << std::endl;
                    return 1;
                }
                output_file = argv[++i];
            } else if (std::strcmp(argv[i], "--out-dir") == 0) {
                if (i + 1 >= argc) {
                    std::cerr << "Error: --out-dir requires an argument" << std::endl;
                    return 1;
                }
                out_dir = argv[++i];
            } else if (std::strcmp(argv[i], "--emit-asm") == 0 || std::strcmp(argv[i], "-S") == 0) {
                emit = EmitMode::ASM;
            } else if (std::strcmp(argv[i], "--emit-obj") == 0 || std::strcmp(argv[i], "-c") == 0) {
                emit = EmitMode::OBJ;
            } else if (std::strcmp(argv[i], "--run") == 0) {
                run_after = true;
            }
        }
        
        // Default output filename
        if (output_file.empty()) {
            if (!out_dir.empty()) {
                std::filesystem::path in(input_file);
                std::string base = in.stem().string();
                std::filesystem::path od(out_dir);
                std::filesystem::create_directories(od);
                output_file = (od / (base + ".s")).string();
            } else {
                output_file = getOutputFilename(input_file);
            }
        }
        
        std::cout << "Zinc Compiler v0.1" << std::endl;
        std::cout << "Compiling: " << input_file << std::endl;
        
        // Read source file and recursively inline header imports.
        std::unordered_set<std::string> visited;
        std::string source = loadSourceWithImports(input_file, visited);
        
        // Lexing
        std::cout << "Lexing..." << std::endl;
        Lexer lexer(source);
        std::vector<Token> tokens = lexer.tokenize();
        
        std::cout << "Found " << tokens.size() << " tokens" << std::endl;
        
        // Parsing
        std::cout << "Parsing..." << std::endl;
        Parser parser(tokens);
        std::unique_ptr<Program> program;
        
        try {
            program = parser.parse();
        } catch (const ParseError& e) {
            std::cerr << "Parse error: " << e.what() << std::endl;
            // Best-effort context (ParseError already includes line/col in message).
            // Try to extract "line X, column Y" pattern.
            int line = -1, col = -1;
            std::string msg = e.what();
            auto line_pos = msg.rfind("line ");
            auto col_pos = msg.rfind("column ");
            if (line_pos != std::string::npos) {
                line = std::atoi(msg.c_str() + line_pos + 5);
            }
            if (col_pos != std::string::npos) {
                col = std::atoi(msg.c_str() + col_pos + 7);
            }
            if (line > 0 && col > 0) printParseContext(source, line, col);
            return 1;
        }
        
        std::cout << "Found " << program->functions.size() << " functions" << std::endl;

        // Type checking
        std::cout << "Typechecking..." << std::endl;
        try {
            TypeChecker tc;
            tc.check(*program);
        } catch (const TypeError& e) {
            std::cerr << e.what() << std::endl;
            return 1;
        }
        
        // Code generation
        std::cout << "Generating code..." << std::endl;
        CodeGen codegen;
        std::string assembly = codegen.generate(*program);
        
        // Write output
        writeFile(output_file, assembly);
        std::cout << "Assembly written to: " << output_file << std::endl;

        if (emit == EmitMode::ASM) {
            return 0;
        }
        
        // Assemble to object file
        std::string obj_file = output_file.substr(0, output_file.length() - 2) + ".o";
        std::string asm_cmd = "as " + output_file + " -o " + obj_file;
        
        std::cout << "Assembling..." << std::endl;
        int asm_result = system(asm_cmd.c_str());
        if (asm_result != 0) {
            std::cerr << "Assembler failed" << std::endl;
            return 1;
        }

        if (emit == EmitMode::OBJ) {
            std::cout << "Object written to: " << obj_file << std::endl;
            return 0;
        }
        
        // Link to executable
        // Exe name used, but currently compiles for linux x86_64 only
        // TODO: Add support for multiple platforms and specifying target platforms
        std::string exe_file = output_file.substr(0, output_file.length() - 2);
        std::string link_cmd = "gcc " + obj_file + " -o " + exe_file + " -lc";
        
        std::cout << "Linking..." << std::endl;
        int link_result = system(link_cmd.c_str());
        if (link_result != 0) {
            std::cerr << "Linker failed" << std::endl;
            return 1;
        }
        
        std::cout << "Compilation successful!" << std::endl;
        std::cout << "Executable: " << exe_file << std::endl;

        if (run_after) {
            std::cout << "Running: " << exe_file << std::endl;
            return system(exe_file.c_str());
        }
        
        return 0;
        
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
}
