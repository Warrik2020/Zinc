.section .data
fmt_int: .string "%ld"
fmt_str: .string "%s"
fmt_nl: .string "\n"
str_0: .string ""
str_1: .string "func"
str_2: .string "int"
str_3: .string "float"
str_4: .string "string"
str_5: .string "bool"
str_6: .string "char"
str_7: .string "void"
str_8: .string "if"
str_9: .string "else"
str_10: .string "while"
str_11: .string "for"
str_12: .string "break"
str_13: .string "continue"
str_14: .string "return"
str_15: .string "true"
str_16: .string "false"
str_17: .string "txtout"
str_18: .string "txtout_nl"
str_19: .string "txtin"
str_20: .string "out"
str_21: .string "is"
str_22: .string "const"
str_23: .string "struct"
str_24: .string "switch"
str_25: .string "case"
str_26: .string "default"
str_27: .string "match"
str_28: .string "try"
str_29: .string "catch"
str_30: .string "throw"
str_31: .string "import"
str_32: .string "export"
str_33: .string "module"
str_34: .string "private"
str_35: .string "type"
str_36: .string "new"
str_37: .string "delete"
str_38: .string "sizeof"
str_39: .string "do"
str_40: .string "nullptr"
str_41: .string "class"
str_42: .string "asm"
str_43: .string "EOF"
str_44: .string "IDENT("
str_45: .string ":"
str_46: .string "): "
str_47: .string "NUMBER("
str_48: .string "STRING("
str_49: .string "CHAR("
str_50: .string "PUNCT("
str_51: .string "codegen error: "
str_52: .string "codegen error at "
str_53: .string ": "
str_54: .string "str_"
str_55: .string ": .string "
str_56: .string "|| expects int"
str_57: .string "    pushq %rax"
str_58: .string "    popq %r10"
str_59: .string "    testq %r10, %r10"
str_60: .string "    setne %r10b"
str_61: .string "    testq %rax, %rax"
str_62: .string "    setne %al"
str_63: .string "    orb %r10b, %al"
str_64: .string "    movzbl %al, %eax"
str_65: .string "&& expects int"
str_66: .string "    andb %r10b, %al"
str_67: .string "| expects int"
str_68: .string "    orq %r10, %rax"
str_69: .string "^ expects int"
str_70: .string "    xorq %r10, %rax"
str_71: .string "& expects int"
str_72: .string "    andq %r10, %rax"
str_73: .string "==/!= type mismatch"
str_74: .string "    movq %rax, %rsi"
str_75: .string "    popq %rdi"
str_76: .string "    call __zinc_rt_strcmp"
str_77: .string "    cmpl $0, %eax"
str_78: .string "    sete %al"
str_79: .string "==/!= expects int"
str_80: .string "    cmpq %rax, %r10"
str_81: .string "comparison expects int"
str_82: .string "    setl %al"
str_83: .string "    setg %al"
str_84: .string "    setle %al"
str_85: .string "    setge %al"
str_86: .string "add expects int"
str_87: .string "    movq %rax, %rcx"
str_88: .string "    movq %r10, %rax"
str_89: .string "    subq %rcx, %rax"
str_90: .string "    addq %r10, %rax"
str_91: .string "mul expects int"
str_92: .string "    cqo"
str_93: .string "    idivq %rcx"
str_94: .string "    movq %rdx, %rax"
str_95: .string "    imulq %r10, %rax"
str_96: .string "unary ! expects int"
str_97: .string "expected identifier after '&'"
str_98: .string "unknown variable"
str_99: .string "    leaq -"
str_100: .string "(%rbp), %rax"
str_101: .string "deref expects int"
str_102: .string "    movq (%rax), %rax"
str_103: .string "unary - expects int"
str_104: .string "    negq %rax"
str_105: .string "    movq $"
str_106: .string ", %rax"
str_107: .string "    leaq "
str_108: .string "(%rip), %rax"
str_109: .string "    movq $1, %rax"
str_110: .string "    xorq %rax, %rax"
str_111: .string "unexpected end in constructor"
str_112: .string "class constructor args not supported"
str_113: .string "    call __zn_new_"
str_114: .string "unexpected end in call"
str_115: .string "implicit method call missing self"
str_116: .string "    movq -"
str_117: .string "expected ')'"
str_118: .string "calls > 6 args not supported"
str_119: .string "    popq %rsi"
str_120: .string "    popq %rdx"
str_121: .string "    popq %rcx"
str_122: .string "    popq %r8"
str_123: .string "    popq %r9"
str_124: .string "    call "
str_125: .string "copy() expects 1 arg"
str_126: .string "copy() expects class ptr"
str_127: .string "__zn_copy_"
str_128: .string "unexpected end after member op"
str_129: .string "expected member name"
str_130: .string "member access on non-object"
str_131: .string "unknown method"
str_132: .string "instance method requires explicit self arg"
str_133: .string "field access on class"
str_134: .string "unknown field"
str_135: .string "    movq "
str_136: .string "(%rax), %rax"
str_137: .string "index expects int"
str_138: .string "expected ']'"
str_139: .string "    popq %rax"
str_140: .string "    leaq (%rax,%rcx,1), %rax"
str_141: .string "    movzbq (%rax), %rax"
str_142: .string "    leaq (%rax,%rcx,8), %rax"
str_143: .string "unexpected token in expression"
str_144: .string ".globl __zinc_rt_exit"
str_145: .string ".globl __zinc_rt_free"
str_146: .string ".globl __zinc_rt_malloc"
str_147: .string ".globl __zinc_rt_memset"
str_148: .string ".globl __zinc_rt_memcpy"
str_149: .string ".globl __zinc_rt_strcmp"
str_150: .string ".globl __zinc_rt_strdup"
str_151: .string ".globl __zinc_rt_printf"
str_152: .string ".globl __zinc_rt_fgets"
str_153: .string ".globl __zinc_rt_strlen"
str_154: .string ".globl txtin"
str_155: .string "__zinc_rt_exit:"
str_156: .string "    pushq %rbp"
str_157: .string "    movq %rsp, %rbp"
str_158: .string "    movq %rdi, %rbx"
str_159: .string "    xorq %rdi, %rdi"
str_160: .string "    call fflush@PLT"
str_161: .string "    movq %rbx, %rdi"
str_162: .string "    call _exit@PLT"
str_163: .string "__zinc_rt_free:"
str_164: .string "    call free@PLT"
str_165: .string "    movq %rbp, %rsp"
str_166: .string "    popq %rbp"
str_167: .string "    retq"
str_168: .string "__zinc_rt_malloc:"
str_169: .string "    call malloc@PLT"
str_170: .string "__zinc_rt_memset:"
str_171: .string "    call memset@PLT"
str_172: .string "__zinc_rt_memcpy:"
str_173: .string "    call memcpy@PLT"
str_174: .string "__zinc_rt_strcmp:"
str_175: .string "    call strcmp@PLT"
str_176: .string "__zinc_rt_strdup:"
str_177: .string "    call strdup@PLT"
str_178: .string "__zinc_rt_printf:"
str_179: .string "    call printf@PLT"
str_180: .string "__zinc_rt_fgets:"
str_181: .string "    call fgets@PLT"
str_182: .string "__zinc_rt_strlen:"
str_183: .string "    call strlen@PLT"
str_184: .string "txtin:"
str_185: .string "    pushq %rbx"
str_186: .string "    movl $1024, %edi"
str_187: .string "    movq %rax, %rbx"
str_188: .string "    testq %rbx, %rbx"
str_189: .string "    je .Ltxtin_ret0"
str_190: .string "    xorl %edi, %edi"
str_191: .string "    movq %rbx, %rsi"
str_192: .string "    movl $1023, %edx"
str_193: .string "    call read@PLT"
str_194: .string "    cmpq $0, %rax"
str_195: .string "    jg .Ltxtin_got"
str_196: .string "    movb $0, (%rbx)"
str_197: .string "    movq %rbx, %rax"
str_198: .string "    jmp .Ltxtin_done"
str_199: .string ".Ltxtin_got:"
str_200: .string "    movb $0, (%rbx,%rcx,1)"
str_201: .string "    decq %rcx"
str_202: .string "    js .Ltxtin_ok"
str_203: .string "    movb (%rbx,%rcx,1), %al"
str_204: .string "    cmpb $10, %al"
str_205: .string "    je .Ltxtin_strip"
str_206: .string "    cmpb $13, %al"
str_207: .string "    jne .Ltxtin_ok"
str_208: .string ".Ltxtin_strip:"
str_209: .string ".Ltxtin_ok:"
str_210: .string ".Ltxtin_ret0:"
str_211: .string ".Ltxtin_done:"
str_212: .string "    popq %rbx"
str_213: .string ".globl __zn_new_"
str_214: .string ".globl __zn_copy_"
str_215: .string "__zn_new_"
str_216: .string "    movl $"
str_217: .string ", %edi"
str_218: .string "    movq %rax, %rdi"
str_219: .string "    xorl %esi, %esi"
str_220: .string ", %edx"
str_221: .string ".L"
str_222: .string "internal: missing fn table"
str_223: .string "__"
str_224: .string "expected '{'"
str_225: .string "unterminated block"
str_226: .string "expected variable name"
str_227: .string "expected 'is'"
str_228: .string "expected ';'"
str_229: .string "expected end"
str_230: .string "type mismatch"
str_231: .string "rebind type mismatch"
str_232: .string "    movq %rax, -"
str_233: .string "(%rbp)"
str_234: .string "expected identifier after '*'"
str_235: .string "store expects value"
str_236: .string "    movq %rax, (%r10)"
str_237: .string "expected statement"
str_238: .string "expected '('"
str_239: .string "    jz .L"
str_240: .string "    jmp .L"
str_241: .string "break outside loop"
str_242: .string "continue outside loop"
str_243: .string "internal: missing ret label"
str_244: .string "    jmp .Lret_"
str_245: .string "expected ','"
str_246: .string "    leaq fmt_str(%rip), %rdi"
str_247: .string "    leaq fmt_int(%rip), %rdi"
str_248: .string "    xorl %eax, %eax"
str_249: .string "    call __zinc_rt_printf"
str_250: .string "    leaq fmt_nl(%rip), %rdi"
str_251: .string "out expects int"
str_252: .string "    call __zinc_rt_exit"
str_253: .string "unknown object"
str_254: .string "member assign on non-object"
str_255: .string "(%rbp), %r10"
str_256: .string "    movq %rax, "
str_257: .string "(%r10)"
str_258: .string "expected class name"
str_259: .string "expected '{' after class"
str_260: .string "unterminated class body"
str_261: .string "expected return type"
str_262: .string "expected method name"
str_263: .string "unterminated param list"
str_264: .string "unterminated method body"
str_265: .string "expected function name"
str_266: .string "unterminated function body"
str_267: .string "no functions found"
str_268: .string "bad param"
str_269: .string "failed to open output"
str_270: .string ".section .data"
str_271: .string "fmt_int: .string "
str_272: .string "%ld"
str_273: .string "fmt_str: .string "
str_274: .string "%s"
str_275: .string "fmt_nl: .string "
str_276: .string ".section .text"
str_277: .string ".globl "
str_278: .string "    subq $"
str_279: .string ", %rsp"
str_280: .string "%rdi"
str_281: .string "%rsi"
str_282: .string "%rdx"
str_283: .string "%rcx"
str_284: .string "%r8"
str_285: .string "%r9"
str_286: .string "params > 6 not supported"
str_287: .string ", -"
str_288: .string ".Lret_"
str_289: .string "DBG: free(string) "
str_290: .string " ptr="
str_291: .string "DBG: free(ptr) "
str_292: .string "DBG: "
str_293: .string "."
str_294: .string "/"
str_295: .string "dirname"
str_296: .string "scan_header_and_strip "
str_297: .string "failed to read file: "
str_298: .string "scan_header_and_strip bytes="
str_299: .string "###"
str_300: .string "Error: module(); must appear before any import(...) directives in "
str_301: .string "resolve_unit "
str_302: .string "Error: circular module dependency at "
str_303: .string "resolve_unit imports="
str_304: .string "Error: import target is not a module: "
str_305: .string "Error: failed to resolve import: "
str_306: .string "  from: "
str_307: .string "  tried: "
str_308: .string "build_combined_source entry="
str_309: .string "build_combined_source units="
str_310: .string "build_combined_source bytes="
str_311: .string "usage: znc <file.zn> [--compile] [--emit-asm] [-S out.s] [-o out] [--dump-tokens]"
str_312: .string "a.out"
str_313: .string "--dump-tokens"
str_314: .string "--compile"
str_315: .string "--backend=zn"
str_316: .string "--emit-asm"
str_317: .string "--debug"
str_318: .string "enabled via --debug"
str_319: .string "--debug-driver"
str_320: .string "enabled via --debug-driver"
str_321: .string "-S"
str_322: .string "missing path after -S"
str_323: .string "-o"
str_324: .string "missing path after -o"
str_325: .string "unknown arg: "
str_326: .string "missing input file"
str_327: .string "failed to read file"
str_328: .string "input="
str_329: .string "lex(input) tok_count="
str_330: .string "build/znc_zn_out.s"
str_331: .string "mkdir -p "
str_332: .string "build"
str_333: .string "building combined source"
str_334: .string "combined bytes="
str_335: .string "lex(combined) tok_count="
str_336: .string "codegen asm_path="
str_337: .string "codegen done"
str_338: .string "Assembly written"
str_339: .string "test -d "
str_340: .string "cc "
str_341: .string " -o "
str_342: .string "link cmd="
str_343: .string "link rc="
str_344: .string "link failed"
str_345: .string "Built"

.section .text
.globl __zinc_rt_exit
.globl __zinc_rt_free
.globl __zinc_rt_malloc
.globl __zinc_rt_memset
.globl __zinc_rt_memcpy
.globl __zinc_rt_strcmp
.globl __zinc_rt_strdup
.globl __zinc_rt_printf
.globl __zinc_rt_fgets
.globl __zinc_rt_strlen
.globl txtin

__zinc_rt_exit:
    pushq %rbp
    movq %rsp, %rbp
    movq %rdi, %rbx
    xorq %rdi, %rdi
    call fflush@PLT
    movq %rbx, %rdi
    call _exit@PLT

__zinc_rt_free:
    pushq %rbp
    movq %rsp, %rbp
    call free@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_malloc:
    pushq %rbp
    movq %rsp, %rbp
    call malloc@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_memset:
    pushq %rbp
    movq %rsp, %rbp
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_memcpy:
    pushq %rbp
    movq %rsp, %rbp
    call memcpy@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_strcmp:
    pushq %rbp
    movq %rsp, %rbp
    call strcmp@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_strdup:
    pushq %rbp
    movq %rsp, %rbp
    call strdup@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_printf:
    pushq %rbp
    movq %rsp, %rbp
    call printf@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_fgets:
    pushq %rbp
    movq %rsp, %rbp
    call fgets@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

__zinc_rt_strlen:
    pushq %rbp
    movq %rsp, %rbp
    call strlen@PLT
    movq %rbp, %rsp
    popq %rbp
    retq

txtin:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movl $1024, %edi
    call malloc@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    je .Ltxtin_ret0
    xorl %edi, %edi
    movq %rbx, %rsi
    movl $1023, %edx
    call read@PLT
    cmpq $0, %rax
    jg .Ltxtin_got
    movb $0, (%rbx)
    movq %rbx, %rax
    jmp .Ltxtin_done
.Ltxtin_got:
    movq %rax, %rcx
    movb $0, (%rbx,%rcx,1)
    decq %rcx
    js .Ltxtin_ok
    movb (%rbx,%rcx,1), %al
    cmpb $10, %al
    je .Ltxtin_strip
    cmpb $13, %al
    jne .Ltxtin_ok
.Ltxtin_strip:
    movb $0, (%rbx,%rcx,1)
.Ltxtin_ok:
    movq %rbx, %rax
    jmp .Ltxtin_done
.Ltxtin_ret0:
    xorq %rax, %rax
.Ltxtin_done:
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq


.globl __zn_new_VecToken
.globl __zn_copy_VecToken
__zn_new_VecToken:
    pushq %rbp
    movq %rsp, %rbp
    movl $24, %edi
    call malloc@PLT
    movq %rax, %rdi
    xorl %esi, %esi
    movl $24, %edx
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq
__zn_copy_VecToken:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movq %rdi, %rbx
    movl $24, %edi
    call malloc@PLT
    movq %rax, %rdi
    movq %rbx, %rsi
    movl $24, %edx
    call memcpy@PLT
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq

.globl __zn_new_VecInt
.globl __zn_copy_VecInt
__zn_new_VecInt:
    pushq %rbp
    movq %rsp, %rbp
    movl $24, %edi
    call malloc@PLT
    movq %rax, %rdi
    xorl %esi, %esi
    movl $24, %edx
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq
__zn_copy_VecInt:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movq %rdi, %rbx
    movl $24, %edi
    call malloc@PLT
    movq %rax, %rdi
    movq %rbx, %rsi
    movl $24, %edx
    call memcpy@PLT
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq

.globl __zn_new_Codegen
.globl __zn_copy_Codegen
__zn_new_Codegen:
    pushq %rbp
    movq %rsp, %rbp
    movl $200, %edi
    call malloc@PLT
    movq %rax, %rdi
    xorl %esi, %esi
    movl $200, %edx
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq
__zn_copy_Codegen:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movq %rdi, %rbx
    movl $200, %edi
    call malloc@PLT
    movq %rax, %rdi
    movq %rbx, %rsi
    movl $200, %edx
    call memcpy@PLT
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq

.globl str_len
str_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_strlen
    jmp .Lret_0
    xorq %rax, %rax
.Lret_0:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open_mode
file_open_mode:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call open
    jmp .Lret_1
    xorq %rax, %rax
.Lret_1:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open
file_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $420, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_open_mode
    jmp .Lret_2
    xorq %rax, %rax
.Lret_2:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_close
file_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call close
    jmp .Lret_3
    xorq %rax, %rax
.Lret_3:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_read
file_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call read
    jmp .Lret_4
    xorq %rax, %rax
.Lret_4:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_write
file_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call write
    jmp .Lret_5
    xorq %rax, %rax
.Lret_5:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_lseek
file_lseek:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call lseek
    jmp .Lret_6
    xorq %rax, %rax
.Lret_6:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_unlink
file_unlink:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call unlink
    jmp .Lret_7
    xorq %rax, %rax
.Lret_7:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open_read
file_open_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call file_open
    jmp .Lret_8
    xorq %rax, %rax
.Lret_8:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open_write
file_open_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $577, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call file_open
    jmp .Lret_9
    xorq %rax, %rax
.Lret_9:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open_append
file_open_append:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1089, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call file_open
    jmp .Lret_10
    xorq %rax, %rax
.Lret_10:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_open_read_write
file_open_read_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $66, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call file_open
    jmp .Lret_11
    xorq %rax, %rax
.Lret_11:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_exists
file_exists:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_open_read
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1645
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    movq $1, %rax
    jmp .Lret_12
    jmp .L1646
.L1645:
.L1646:
    xorq %rax, %rax
    jmp .Lret_12
    xorq %rax, %rax
.Lret_12:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_get_size_fd
file_get_size_fd:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_lseek
    movq %rax, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_lseek
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_lseek
    movq -24(%rbp), %rax
    jmp .Lret_15
    xorq %rax, %rax
.Lret_15:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_get_size
file_get_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_open_read
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1647
    movq $1, %rax
    negq %rax
    jmp .Lret_16
    jmp .L1648
.L1647:
.L1648:
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_get_size_fd
    movq %rax, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    movq -24(%rbp), %rax
    jmp .Lret_16
    xorq %rax, %rax
.Lret_16:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_delete
file_delete:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_unlink
    jmp .Lret_19
    xorq %rax, %rax
.Lret_19:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_write_string
file_write_string:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call str_len
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    jmp .Lret_20
    xorq %rax, %rax
.Lret_20:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl file_read_all
file_read_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_open_read
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1649
    leaq str_0(%rip), %rax
    jmp .Lret_21
    jmp .L1650
.L1649:
.L1650:
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_get_size_fd
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1651
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    leaq str_0(%rip), %rax
    jmp .Lret_21
    jmp .L1652
.L1651:
.L1652:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1653
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    leaq str_0(%rip), %rax
    jmp .Lret_21
    jmp .L1654
.L1653:
.L1654:
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_read
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1655
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    leaq str_0(%rip), %rax
    jmp .Lret_21
    jmp .L1656
.L1655:
.L1656:
    movq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memset
    movq -32(%rbp), %rax
    jmp .Lret_21
    xorq %rax, %rax
.Lret_21:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl rt_malloc
rt_malloc:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    jmp .Lret_30
    xorq %rax, %rax
.Lret_30:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl rt_memset
rt_memset:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memset
    xorq %rax, %rax
.Lret_31:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl rt_memcpy
rt_memcpy:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    xorq %rax, %rax
.Lret_32:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl ptr_load
ptr_load:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    movq (%rax), %rax
    jmp .Lret_33
    xorq %rax, %rax
.Lret_33:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl ptr_store
ptr_store:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    movq %rax, (%r10)
    xorq %rax, %rax
.Lret_34:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__init
VecToken__init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    xorq %rax, %rax
.Lret_35:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__destroy
VecToken__destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1657
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    popq %rdi
    call free
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    jmp .L1658
.L1657:
.L1658:
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    xorq %rax, %rax
.Lret_36:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__push
VecToken__push:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1659
    movq $0, %rax
    movq %rax, -56(%rbp)
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1661
    movq $64, %rax
    movq %rax, -56(%rbp)
    jmp .L1662
.L1661:
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -56(%rbp)
.L1662:
    movq -56(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rdi
    call rt_malloc
    movq %rax, -64(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1663
    movq -64(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memcpy
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L1664
.L1663:
.L1664:
    movq -64(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    movq -56(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    jmp .L1660
.L1659:
.L1660:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -72(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    xorq %rax, %rax
.Lret_39:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__get_kind
VecToken__get_kind:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_46
    xorq %rax, %rax
.Lret_46:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__get_start
VecToken__get_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_47
    xorq %rax, %rax
.Lret_47:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__get_len
VecToken__get_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_48
    xorq %rax, %rax
.Lret_48:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__get_line
VecToken__get_line:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_49
    xorq %rax, %rax
.Lret_49:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecToken__get_col
VecToken__get_col:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_50
    xorq %rax, %rax
.Lret_50:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__init
VecInt__init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    xorq %rax, %rax
.Lret_51:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__destroy
VecInt__destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1665
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    popq %rdi
    call free
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    jmp .L1666
.L1665:
.L1666:
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    xorq %rax, %rax
.Lret_52:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__push
VecInt__push:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1667
    movq $0, %rax
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1669
    movq $8, %rax
    movq %rax, -24(%rbp)
    jmp .L1670
.L1669:
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -24(%rbp)
.L1670:
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rdi
    call rt_malloc
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1671
    movq -32(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memcpy
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L1672
.L1671:
.L1672:
    movq -32(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    movq -24(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    jmp .L1668
.L1667:
.L1668:
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    xorq %rax, %rax
.Lret_55:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__get
VecInt__get:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1673
    movq $0, %rax
    jmp .Lret_62
    jmp .L1674
.L1673:
.L1674:
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_62
    xorq %rax, %rax
.Lret_62:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__set
VecInt__set:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1675
    xorq %rax, %rax
    jmp .Lret_65
    jmp .L1676
.L1675:
.L1676:
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ptr_store
    xorq %rax, %rax
.Lret_65:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__count
VecInt__count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    jmp .Lret_68
    xorq %rax, %rax
.Lret_68:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__pop
VecInt__pop:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1677
    movq $0, %rax
    jmp .Lret_69
    jmp .L1678
.L1677:
.L1678:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    jmp .Lret_69
    xorq %rax, %rax
.Lret_69:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl VecInt__clear
VecInt__clear:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    xorq %rax, %rax
.Lret_72:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl len
len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_strlen
    jmp .Lret_73
    xorq %rax, %rax
.Lret_73:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl substr
substr:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call substr_copy
    jmp .Lret_74
    xorq %rax, %rax
.Lret_74:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl substr_copy
substr_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdi
    call rt_malloc
    movq %rax, -32(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1679
    movq -32(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memcpy
    jmp .L1680
.L1679:
.L1680:
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memset
    movq -32(%rbp), %rax
    jmp .Lret_75
    xorq %rax, %rax
.Lret_75:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl strdup_copy
strdup_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call substr_copy
    jmp .Lret_78
    xorq %rax, %rax
.Lret_78:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_space
is_space:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_79
    xorq %rax, %rax
.Lret_79:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_alpha
is_alpha:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $90, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $122, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $95, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_80
    xorq %rax, %rax
.Lret_80:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_digit
is_digit:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_81
    xorq %rax, %rax
.Lret_81:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_hex_digit
is_hex_digit:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1681
    movq $1, %rax
    jmp .Lret_82
    jmp .L1682
.L1681:
.L1682:
    movq -8(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1683
    movq $1, %rax
    jmp .Lret_82
    jmp .L1684
.L1683:
.L1684:
    movq -8(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1685
    movq $1, %rax
    jmp .Lret_82
    jmp .L1686
.L1685:
.L1686:
    xorq %rax, %rax
    jmp .Lret_82
    xorq %rax, %rax
.Lret_82:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl keyword_lookup
keyword_lookup:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_1(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1687
    movq $5, %rax
    jmp .Lret_89
    jmp .L1688
.L1687:
.L1688:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_2(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1689
    movq $6, %rax
    jmp .Lret_89
    jmp .L1690
.L1689:
.L1690:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_3(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1691
    movq $7, %rax
    jmp .Lret_89
    jmp .L1692
.L1691:
.L1692:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_4(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1693
    movq $8, %rax
    jmp .Lret_89
    jmp .L1694
.L1693:
.L1694:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_5(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1695
    movq $9, %rax
    jmp .Lret_89
    jmp .L1696
.L1695:
.L1696:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_6(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1697
    movq $10, %rax
    jmp .Lret_89
    jmp .L1698
.L1697:
.L1698:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_7(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1699
    movq $11, %rax
    jmp .Lret_89
    jmp .L1700
.L1699:
.L1700:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_8(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1701
    movq $12, %rax
    jmp .Lret_89
    jmp .L1702
.L1701:
.L1702:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_9(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1703
    movq $13, %rax
    jmp .Lret_89
    jmp .L1704
.L1703:
.L1704:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_10(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1705
    movq $14, %rax
    jmp .Lret_89
    jmp .L1706
.L1705:
.L1706:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_11(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1707
    movq $15, %rax
    jmp .Lret_89
    jmp .L1708
.L1707:
.L1708:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_12(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1709
    movq $16, %rax
    jmp .Lret_89
    jmp .L1710
.L1709:
.L1710:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_13(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1711
    movq $17, %rax
    jmp .Lret_89
    jmp .L1712
.L1711:
.L1712:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_14(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1713
    movq $18, %rax
    jmp .Lret_89
    jmp .L1714
.L1713:
.L1714:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_15(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1715
    movq $19, %rax
    jmp .Lret_89
    jmp .L1716
.L1715:
.L1716:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_16(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1717
    movq $20, %rax
    jmp .Lret_89
    jmp .L1718
.L1717:
.L1718:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_17(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1719
    movq $21, %rax
    jmp .Lret_89
    jmp .L1720
.L1719:
.L1720:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_18(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1721
    movq $22, %rax
    jmp .Lret_89
    jmp .L1722
.L1721:
.L1722:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_19(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1723
    movq $23, %rax
    jmp .Lret_89
    jmp .L1724
.L1723:
.L1724:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_20(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1725
    movq $24, %rax
    jmp .Lret_89
    jmp .L1726
.L1725:
.L1726:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_21(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1727
    movq $25, %rax
    jmp .Lret_89
    jmp .L1728
.L1727:
.L1728:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_22(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1729
    movq $26, %rax
    jmp .Lret_89
    jmp .L1730
.L1729:
.L1730:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_23(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1731
    movq $27, %rax
    jmp .Lret_89
    jmp .L1732
.L1731:
.L1732:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_24(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1733
    movq $28, %rax
    jmp .Lret_89
    jmp .L1734
.L1733:
.L1734:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_25(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1735
    movq $29, %rax
    jmp .Lret_89
    jmp .L1736
.L1735:
.L1736:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_26(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1737
    movq $30, %rax
    jmp .Lret_89
    jmp .L1738
.L1737:
.L1738:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_27(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1739
    movq $31, %rax
    jmp .Lret_89
    jmp .L1740
.L1739:
.L1740:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_28(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1741
    movq $32, %rax
    jmp .Lret_89
    jmp .L1742
.L1741:
.L1742:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_29(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1743
    movq $33, %rax
    jmp .Lret_89
    jmp .L1744
.L1743:
.L1744:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_30(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1745
    movq $34, %rax
    jmp .Lret_89
    jmp .L1746
.L1745:
.L1746:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_31(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1747
    movq $35, %rax
    jmp .Lret_89
    jmp .L1748
.L1747:
.L1748:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_32(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1749
    movq $36, %rax
    jmp .Lret_89
    jmp .L1750
.L1749:
.L1750:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_33(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1751
    movq $37, %rax
    jmp .Lret_89
    jmp .L1752
.L1751:
.L1752:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_34(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1753
    movq $38, %rax
    jmp .Lret_89
    jmp .L1754
.L1753:
.L1754:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_35(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1755
    movq $39, %rax
    jmp .Lret_89
    jmp .L1756
.L1755:
.L1756:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_36(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1757
    movq $40, %rax
    jmp .Lret_89
    jmp .L1758
.L1757:
.L1758:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_37(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1759
    movq $41, %rax
    jmp .Lret_89
    jmp .L1760
.L1759:
.L1760:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_38(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1761
    movq $42, %rax
    jmp .Lret_89
    jmp .L1762
.L1761:
.L1762:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_39(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1763
    movq $43, %rax
    jmp .Lret_89
    jmp .L1764
.L1763:
.L1764:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_40(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1765
    movq $44, %rax
    jmp .Lret_89
    jmp .L1766
.L1765:
.L1766:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_41(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1767
    movq $45, %rax
    jmp .Lret_89
    jmp .L1768
.L1767:
.L1768:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_42(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1769
    movq $46, %rax
    jmp .Lret_89
    jmp .L1770
.L1769:
.L1770:
    movq $1, %rax
    jmp .Lret_89
    xorq %rax, %rax
.Lret_89:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dump_token
dump_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1771
    leaq str_43(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    xorq %rax, %rax
    jmp .Lret_174
    jmp .L1772
.L1771:
.L1772:
    movq -32(%rbp), %rax
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $40, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1773
    movq $40, %rax
    movq %rax, -56(%rbp)
    jmp .L1774
.L1773:
.L1774:
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call substr
    movq %rax, -64(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1775
    leaq str_44(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L1776
.L1775:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1777
    leaq str_47(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L1778
.L1777:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1779
    leaq str_48(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L1780
.L1779:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1781
    leaq str_49(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L1782
.L1781:
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1783
    leaq str_50(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L1784
.L1783:
    leaq str_44(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -48(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_46(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
.L1784:
.L1782:
.L1780:
.L1778:
.L1776:
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_174:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl lex
lex:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecToken__init
    movq $0, %rax
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    movq $1, %rax
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L1785:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1786
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1787
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $35, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $35, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1789
    movq $1, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -64(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1785
    jmp .L1790
.L1789:
.L1790:
    jmp .L1788
.L1787:
.L1788:
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1791
    movq -72(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1793
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    jmp .L1794
.L1793:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1794:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L1785
    jmp .L1792
.L1791:
.L1792:
    movq -72(%rbp), %rax
    pushq %rax
    movq $35, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1795
.L1797:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1798
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1797
.L1798:
    jmp .L1785
    jmp .L1796
.L1795:
.L1796:
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_space
    testq %rax, %rax
    jz .L1799
    movq -72(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1801
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    jmp .L1802
.L1801:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1802:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L1785
    jmp .L1800
.L1799:
.L1800:
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_alpha
    testq %rax, %rax
    jz .L1803
    movq -40(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -88(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1805:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1806
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_alpha
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_digit
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1807
    jmp .L1806
    jmp .L1808
.L1807:
.L1808:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1805
.L1806:
    movq -40(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -112(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L1785
    jmp .L1804
.L1803:
.L1804:
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_digit
    testq %rax, %rax
    jz .L1809
    movq -40(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -88(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $88, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    popq %rdi
    call is_hex_digit
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1811
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1813:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    popq %rdi
    call is_hex_digit
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1814
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1813
.L1814:
    jmp .L1812
.L1811:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1815:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1816
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_digit
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1817
    jmp .L1816
    jmp .L1818
.L1817:
.L1818:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1815
.L1816:
.L1812:
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L1785
    jmp .L1810
.L1809:
.L1810:
    movq -72(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1819
    movq -40(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -88(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1821:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1822
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $92, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1823
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1825
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1821
    jmp .L1826
.L1825:
.L1826:
    jmp .L1824
.L1823:
.L1824:
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1827
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    jmp .L1828
.L1827:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L1828:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L1821
.L1822:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $34, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1829
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1830
.L1829:
.L1830:
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L1785
    jmp .L1820
.L1819:
.L1820:
    movq -72(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1831
    movq -40(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -88(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -96(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1833
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1835
    movq $10, %rax
    movq %rax, -120(%rbp)
    jmp .L1836
.L1835:
    movq -128(%rbp), %rax
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1837
    movq $9, %rax
    movq %rax, -120(%rbp)
    jmp .L1838
.L1837:
    movq -128(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1839
    movq $92, %rax
    movq %rax, -120(%rbp)
    jmp .L1840
.L1839:
    movq -128(%rbp), %rax
    pushq %rax
    movq $39, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1841
    movq $39, %rax
    movq %rax, -120(%rbp)
    jmp .L1842
.L1841:
    movq -128(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1843
    movq $0, %rax
    movq %rax, -120(%rbp)
    jmp .L1844
.L1843:
.L1844:
.L1842:
.L1840:
.L1838:
.L1836:
    jmp .L1834
.L1833:
.L1834:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $39, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1845
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L1846
.L1845:
.L1846:
    movq -16(%rbp), %rax
    pushq %rax
    movq $47, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L1785
    jmp .L1832
.L1831:
.L1832:
    movq -40(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -48(%rbp), %rax
    movq %rax, -88(%rbp)
    movq -56(%rbp), %rax
    movq %rax, -96(%rbp)
    movq $1, %rax
    movq %rax, -136(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1847
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    movq %rax, -104(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $33, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $38, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $124, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $60, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $62, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $43, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $45, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $42, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $47, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $37, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $61, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1849
    movq $2, %rax
    movq %rax, -136(%rbp)
    jmp .L1850
.L1849:
.L1850:
    jmp .L1848
.L1847:
.L1848:
    movq -40(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L1785
.L1786:
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call VecToken__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    jmp .Lret_189
    xorq %rax, %rax
.Lret_189:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_class_ptr_ty
is_class_ptr_ty:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1000, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $2000, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_256
    xorq %rax, %rax
.Lret_256:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_class_ref_ty
is_class_ref_ty:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $2000, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    jmp .Lret_257
    xorq %rax, %rax
.Lret_257:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl class_idx_from_ty
class_idx_from_ty:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ptr_ty
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1851
    movq -8(%rbp), %rax
    pushq %rax
    movq $1000, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    jmp .Lret_258
    jmp .L1852
.L1851:
.L1852:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ref_ty
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1853
    movq -8(%rbp), %rax
    pushq %rax
    movq $2000, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    jmp .Lret_258
    jmp .L1854
.L1853:
.L1854:
    movq $1, %rax
    negq %rax
    jmp .Lret_258
    xorq %rax, %rax
.Lret_258:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl cg_error
cg_error:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    leaq str_51(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    xorq %rax, %rax
.Lret_263:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__init
Codegen__init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq -16(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    movq -24(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 8(%r10)
    movq -32(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 16(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 24(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 32(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 56(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 64(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 72(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 80(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 88(%r10)
    movq -40(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 96(%r10)
    movq $8, %rax
    pushq %rax
    popq %rdi
    call rt_malloc
    movq -8(%rbp), %r10
    movq %rax, 104(%r10)
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memset
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 112(%r10)
    movq $1, %rax
    negq %rax
    movq -8(%rbp), %r10
    movq %rax, 120(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 128(%r10)
    movq $1, %rax
    negq %rax
    movq -8(%rbp), %r10
    movq %rax, 136(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 144(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 152(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 160(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 168(%r10)
    movq $1, %rax
    movq -8(%rbp), %r10
    movq %rax, 176(%r10)
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 40(%r10)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 48(%r10)
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 184(%r10)
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 192(%r10)
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    xorq %rax, %rax
.Lret_264:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__error_at
Codegen__error_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1855
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_line
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_col
    movq %rax, -40(%rbp)
    jmp .L1856
.L1855:
.L1856:
    leaq str_52(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -32(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_45(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_53(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    xorq %rax, %rax
.Lret_265:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_byte
Codegen__emit_byte:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memset
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    xorq %rax, %rax
.Lret_268:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_str
Codegen__emit_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call file_write_string
    xorq %rax, %rax
.Lret_269:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_nl
Codegen__emit_nl:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    xorq %rax, %rax
.Lret_270:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_dec
Codegen__emit_dec:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1857
    movq -8(%rbp), %rax
    pushq %rax
    movq $48, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    xorq %rax, %rax
    jmp .Lret_271
    jmp .L1858
.L1857:
.L1858:
    movq $32, %rax
    pushq %rax
    popq %rdi
    call rt_malloc
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -40(%rbp)
.L1859:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1860
    movq -40(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rdx, %rax
    movq %rax, -48(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $48, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memset
    movq -40(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -40(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L1859
.L1860:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -56(%rbp)
.L1861:
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1863
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
.L1862:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -56(%rbp)
    jmp .L1861
.L1863:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_271:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_line
Codegen__emit_line:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    xorq %rax, %rax
.Lret_279:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_line_num
Codegen__emit_line_num:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    xorq %rax, %rax
.Lret_280:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_punct1
Codegen__tok_punct1:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1864
    movq $0, %rax
    jmp .Lret_281
    jmp .L1865
.L1864:
.L1865:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1866
    movq $0, %rax
    jmp .Lret_281
    jmp .L1867
.L1866:
.L1867:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1868
    movq $0, %rax
    jmp .Lret_281
    jmp .L1869
.L1868:
.L1869:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    jmp .Lret_281
    xorq %rax, %rax
.Lret_281:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_punct2
Codegen__tok_punct2:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1870
    movq $0, %rax
    jmp .Lret_288
    jmp .L1871
.L1870:
.L1871:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1872
    movq $0, %rax
    jmp .Lret_288
    jmp .L1873
.L1872:
.L1873:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1874
    movq $0, %rax
    jmp .Lret_288
    jmp .L1875
.L1874:
.L1875:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_288
    xorq %rax, %rax
.Lret_288:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__byte_at
Codegen__byte_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $8, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memset
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call rt_memcpy
    movq -8(%rbp), %rax
    movq 104(%rax), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call ptr_load
    pushq %rax
    movq $255, %rax
    popq %r10
    andq %r10, %rax
    jmp .Lret_295
    xorq %rax, %rax
.Lret_295:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_func
Codegen__tok_is_func:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1876
    movq $0, %rax
    jmp .Lret_296
    jmp .L1877
.L1876:
.L1877:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1878
    movq $0, %rax
    jmp .Lret_296
    jmp .L1879
.L1878:
.L1879:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1880
    movq $0, %rax
    jmp .Lret_296
    jmp .L1881
.L1880:
.L1881:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $99, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_296
    xorq %rax, %rax
.Lret_296:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_int
Codegen__tok_is_int:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1882
    movq $0, %rax
    jmp .Lret_303
    jmp .L1883
.L1882:
.L1883:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1884
    movq $0, %rax
    jmp .Lret_303
    jmp .L1885
.L1884:
.L1885:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1886
    movq $0, %rax
    jmp .Lret_303
    jmp .L1887
.L1886:
.L1887:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_303
    xorq %rax, %rax
.Lret_303:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_float_kw
Codegen__tok_is_float_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1888
    movq $0, %rax
    jmp .Lret_310
    jmp .L1889
.L1888:
.L1889:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1890
    movq $0, %rax
    jmp .Lret_310
    jmp .L1891
.L1890:
.L1891:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1892
    movq $0, %rax
    jmp .Lret_310
    jmp .L1893
.L1892:
.L1893:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_310
    xorq %rax, %rax
.Lret_310:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_bool_kw
Codegen__tok_is_bool_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1894
    movq $0, %rax
    jmp .Lret_317
    jmp .L1895
.L1894:
.L1895:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1896
    movq $0, %rax
    jmp .Lret_317
    jmp .L1897
.L1896:
.L1897:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1898
    movq $0, %rax
    jmp .Lret_317
    jmp .L1899
.L1898:
.L1899:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $98, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_317
    xorq %rax, %rax
.Lret_317:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_void_kw
Codegen__tok_is_void_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1900
    movq $0, %rax
    jmp .Lret_324
    jmp .L1901
.L1900:
.L1901:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1902
    movq $0, %rax
    jmp .Lret_324
    jmp .L1903
.L1902:
.L1903:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1904
    movq $0, %rax
    jmp .Lret_324
    jmp .L1905
.L1904:
.L1905:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $118, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $100, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_324
    xorq %rax, %rax
.Lret_324:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_main
Codegen__tok_is_main:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1906
    movq $0, %rax
    jmp .Lret_331
    jmp .L1907
.L1906:
.L1907:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1908
    movq $0, %rax
    jmp .Lret_331
    jmp .L1909
.L1908:
.L1909:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1910
    movq $0, %rax
    jmp .Lret_331
    jmp .L1911
.L1910:
.L1911:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $109, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_331
    xorq %rax, %rax
.Lret_331:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_out
Codegen__tok_is_out:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1912
    movq $0, %rax
    jmp .Lret_338
    jmp .L1913
.L1912:
.L1913:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1914
    movq $0, %rax
    jmp .Lret_338
    jmp .L1915
.L1914:
.L1915:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1916
    movq $0, %rax
    jmp .Lret_338
    jmp .L1917
.L1916:
.L1917:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_338
    xorq %rax, %rax
.Lret_338:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_is
Codegen__tok_is_is:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1918
    movq $0, %rax
    jmp .Lret_345
    jmp .L1919
.L1918:
.L1919:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1920
    movq $0, %rax
    jmp .Lret_345
    jmp .L1921
.L1920:
.L1921:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1922
    movq $0, %rax
    jmp .Lret_345
    jmp .L1923
.L1922:
.L1923:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_345
    xorq %rax, %rax
.Lret_345:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_txtout
Codegen__tok_is_txtout:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1924
    movq $0, %rax
    jmp .Lret_352
    jmp .L1925
.L1924:
.L1925:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1926
    movq $0, %rax
    jmp .Lret_352
    jmp .L1927
.L1926:
.L1927:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $6, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1928
    movq $0, %rax
    jmp .Lret_352
    jmp .L1929
.L1928:
.L1929:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_352
    xorq %rax, %rax
.Lret_352:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_txtout_nl
Codegen__tok_is_txtout_nl:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1930
    movq $0, %rax
    jmp .Lret_359
    jmp .L1931
.L1930:
.L1931:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1932
    movq $0, %rax
    jmp .Lret_359
    jmp .L1933
.L1932:
.L1933:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $9, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1934
    movq $0, %rax
    jmp .Lret_359
    jmp .L1935
.L1934:
.L1935:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $95, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_359
    xorq %rax, %rax
.Lret_359:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_string_kw
Codegen__tok_is_string_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1936
    movq $0, %rax
    jmp .Lret_366
    jmp .L1937
.L1936:
.L1937:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1938
    movq $0, %rax
    jmp .Lret_366
    jmp .L1939
.L1938:
.L1939:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $6, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1940
    movq $0, %rax
    jmp .Lret_366
    jmp .L1941
.L1940:
.L1941:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $103, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_366
    xorq %rax, %rax
.Lret_366:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_char_kw
Codegen__tok_is_char_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1942
    movq $0, %rax
    jmp .Lret_373
    jmp .L1943
.L1942:
.L1943:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1944
    movq $0, %rax
    jmp .Lret_373
    jmp .L1945
.L1944:
.L1945:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1946
    movq $0, %rax
    jmp .Lret_373
    jmp .L1947
.L1946:
.L1947:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $99, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $104, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_373
    xorq %rax, %rax
.Lret_373:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_return
Codegen__tok_is_return:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1948
    movq $0, %rax
    jmp .Lret_380
    jmp .L1949
.L1948:
.L1949:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1950
    movq $0, %rax
    jmp .Lret_380
    jmp .L1951
.L1950:
.L1951:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $6, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1952
    movq $0, %rax
    jmp .Lret_380
    jmp .L1953
.L1952:
.L1953:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_380
    xorq %rax, %rax
.Lret_380:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_if
Codegen__tok_is_if:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1954
    movq $0, %rax
    jmp .Lret_387
    jmp .L1955
.L1954:
.L1955:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1956
    movq $0, %rax
    jmp .Lret_387
    jmp .L1957
.L1956:
.L1957:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1958
    movq $0, %rax
    jmp .Lret_387
    jmp .L1959
.L1958:
.L1959:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_387
    xorq %rax, %rax
.Lret_387:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_else
Codegen__tok_is_else:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1960
    movq $0, %rax
    jmp .Lret_394
    jmp .L1961
.L1960:
.L1961:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1962
    movq $0, %rax
    jmp .Lret_394
    jmp .L1963
.L1962:
.L1963:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1964
    movq $0, %rax
    jmp .Lret_394
    jmp .L1965
.L1964:
.L1965:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_394
    xorq %rax, %rax
.Lret_394:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_while
Codegen__tok_is_while:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1966
    movq $0, %rax
    jmp .Lret_401
    jmp .L1967
.L1966:
.L1967:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1968
    movq $0, %rax
    jmp .Lret_401
    jmp .L1969
.L1968:
.L1969:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1970
    movq $0, %rax
    jmp .Lret_401
    jmp .L1971
.L1970:
.L1971:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $119, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $104, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_401
    xorq %rax, %rax
.Lret_401:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_for
Codegen__tok_is_for:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1972
    movq $0, %rax
    jmp .Lret_408
    jmp .L1973
.L1972:
.L1973:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1974
    movq $0, %rax
    jmp .Lret_408
    jmp .L1975
.L1974:
.L1975:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1976
    movq $0, %rax
    jmp .Lret_408
    jmp .L1977
.L1976:
.L1977:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_408
    xorq %rax, %rax
.Lret_408:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_class_kw
Codegen__tok_is_class_kw:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1978
    movq $0, %rax
    jmp .Lret_415
    jmp .L1979
.L1978:
.L1979:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1980
    movq $0, %rax
    jmp .Lret_415
    jmp .L1981
.L1980:
.L1981:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1982
    movq $0, %rax
    jmp .Lret_415
    jmp .L1983
.L1982:
.L1983:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $99, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_415
    xorq %rax, %rax
.Lret_415:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_break
Codegen__tok_is_break:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1984
    movq $0, %rax
    jmp .Lret_422
    jmp .L1985
.L1984:
.L1985:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1986
    movq $0, %rax
    jmp .Lret_422
    jmp .L1987
.L1986:
.L1987:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1988
    movq $0, %rax
    jmp .Lret_422
    jmp .L1989
.L1988:
.L1989:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $98, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $107, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_422
    xorq %rax, %rax
.Lret_422:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_continue
Codegen__tok_is_continue:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1990
    movq $0, %rax
    jmp .Lret_429
    jmp .L1991
.L1990:
.L1991:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1992
    movq $0, %rax
    jmp .Lret_429
    jmp .L1993
.L1992:
.L1993:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $8, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1994
    movq $0, %rax
    jmp .Lret_429
    jmp .L1995
.L1994:
.L1995:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $99, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $7, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_429
    xorq %rax, %rax
.Lret_429:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_true
Codegen__tok_is_true:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1996
    movq $0, %rax
    jmp .Lret_436
    jmp .L1997
.L1996:
.L1997:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L1998
    movq $0, %rax
    jmp .Lret_436
    jmp .L1999
.L1998:
.L1999:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2000
    movq $0, %rax
    jmp .Lret_436
    jmp .L2001
.L2000:
.L2001:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_436
    xorq %rax, %rax
.Lret_436:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_false
Codegen__tok_is_false:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2002
    movq $0, %rax
    jmp .Lret_443
    jmp .L2003
.L2002:
.L2003:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2004
    movq $0, %rax
    jmp .Lret_443
    jmp .L2005
.L2004:
.L2005:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2006
    movq $0, %rax
    jmp .Lret_443
    jmp .L2007
.L2006:
.L2007:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $115, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $101, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_443
    xorq %rax, %rax
.Lret_443:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_txtin
Codegen__tok_is_txtin:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2008
    movq $0, %rax
    jmp .Lret_450
    jmp .L2009
.L2008:
.L2009:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2010
    movq $0, %rax
    jmp .Lret_450
    jmp .L2011
.L2010:
.L2011:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2012
    movq $0, %rax
    jmp .Lret_450
    jmp .L2013
.L2012:
.L2013:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $105, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_450
    xorq %rax, %rax
.Lret_450:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__tok_is_nullptr
Codegen__tok_is_nullptr:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2014
    movq $0, %rax
    jmp .Lret_457
    jmp .L2015
.L2014:
.L2015:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2016
    movq $0, %rax
    jmp .Lret_457
    jmp .L2017
.L2016:
.L2017:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq $7, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2018
    movq $0, %rax
    jmp .Lret_457
    jmp .L2019
.L2018:
.L2019:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $110, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $117, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $108, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $112, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $116, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $114, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_457
    xorq %rax, %rax
.Lret_457:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__slice_eq
Codegen__slice_eq:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2020
    movq $0, %rax
    jmp .Lret_464
    jmp .L2021
.L2020:
.L2021:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L2022:
    movq -48(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2024
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2025
    movq $0, %rax
    jmp .Lret_464
    jmp .L2026
.L2025:
.L2026:
.L2023:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2022
.L2024:
    movq $1, %rax
    jmp .Lret_464
    xorq %rax, %rax
.Lret_464:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__strtab_count
Codegen__strtab_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $2, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    jmp .Lret_472
    xorq %rax, %rax
.Lret_472:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__strtab_get_start
Codegen__strtab_get_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_473
    xorq %rax, %rax
.Lret_473:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__strtab_get_len
Codegen__strtab_get_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_474
    xorq %rax, %rax
.Lret_474:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__strtab_intern
Codegen__strtab_intern:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__strtab_count
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2027:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2029
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__strtab_get_start
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__strtab_get_len
    pushq %rax
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__slice_eq
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2030
    movq -40(%rbp), %rax
    jmp .Lret_475
    jmp .L2031
.L2030:
.L2031:
.L2028:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2027
.L2029:
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 48(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -32(%rbp), %rax
    jmp .Lret_475
    xorq %rax, %rax
.Lret_475:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_label_num
Codegen__emit_label_num:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    xorq %rax, %rax
.Lret_481:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_asm_string_escaped
Codegen__emit_asm_string_escaped:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_54(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_label_num
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_55(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2032:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2034
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $34, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $92, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2035
    movq -8(%rbp), %rax
    pushq %rax
    movq $92, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    jmp .L2036
.L2035:
    movq -48(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2037
    movq -8(%rbp), %rax
    pushq %rax
    movq $92, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    jmp .L2038
.L2037:
    movq -48(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2039
    movq -8(%rbp), %rax
    pushq %rax
    movq $92, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    jmp .L2040
.L2039:
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
.L2040:
.L2038:
.L2036:
.L2033:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2032
.L2034:
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    xorq %rax, %rax
.Lret_482:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_count
Codegen__vars_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $5, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    jmp .Lret_492
    xorq %rax, %rax
.Lret_492:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_get_name_start
Codegen__vars_get_name_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_493
    xorq %rax, %rax
.Lret_493:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_get_name_len
Codegen__vars_get_name_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_494
    xorq %rax, %rax
.Lret_494:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_get_type
Codegen__vars_get_type:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_495
    xorq %rax, %rax
.Lret_495:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_get_off
Codegen__vars_get_off:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_496
    xorq %rax, %rax
.Lret_496:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_get_mutable
Codegen__vars_get_mutable:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_497
    xorq %rax, %rax
.Lret_497:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_find
Codegen__vars_find:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__vars_count
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2041:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2043
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_name_len
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2044
    jmp .L2042
    jmp .L2045
.L2044:
.L2045:
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_name_start
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L2046:
    movq -64(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2048
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2049
    movq $0, %rax
    movq %rax, -56(%rbp)
    jmp .L2048
    jmp .L2050
.L2049:
.L2050:
.L2047:
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -64(%rbp)
    jmp .L2046
.L2048:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2051
    movq -40(%rbp), %rax
    jmp .Lret_498
    jmp .L2052
.L2051:
.L2052:
.L2042:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2041
.L2043:
    movq $1, %rax
    negq %rax
    jmp .Lret_498
    xorq %rax, %rax
.Lret_498:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__vars_add
Codegen__vars_add:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    xorq %rax, %rax
.Lret_511:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_count
Codegen__globals_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2053
    movq $0, %rax
    jmp .Lret_512
    jmp .L2054
.L2053:
.L2054:
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $4, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    jmp .Lret_512
    xorq %rax, %rax
.Lret_512:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_get_name_start
Codegen__globals_get_name_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_515
    xorq %rax, %rax
.Lret_515:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_get_name_len
Codegen__globals_get_name_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_516
    xorq %rax, %rax
.Lret_516:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_get_type
Codegen__globals_get_type:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_517
    xorq %rax, %rax
.Lret_517:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_get_val
Codegen__globals_get_val:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 64(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_518
    xorq %rax, %rax
.Lret_518:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__globals_find
Codegen__globals_find:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__globals_count
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2055:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2057
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__globals_get_name_len
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2058
    jmp .L2056
    jmp .L2059
.L2058:
.L2059:
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__globals_get_name_start
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L2060:
    movq -64(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2062
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2063
    movq $0, %rax
    movq %rax, -56(%rbp)
    jmp .L2062
    jmp .L2064
.L2063:
.L2064:
.L2061:
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -64(%rbp)
    jmp .L2060
.L2062:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2065
    movq -40(%rbp), %rax
    jmp .Lret_519
    jmp .L2066
.L2065:
.L2066:
.L2056:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2055
.L2057:
    movq $1, %rax
    negq %rax
    jmp .Lret_519
    xorq %rax, %rax
.Lret_519:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__fn_ret_ty_plain
Codegen__fn_ret_ty_plain:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2067
    movq $1, %rax
    jmp .Lret_532
    jmp .L2068
.L2067:
.L2068:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L2069:
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2071
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2072
    jmp .L2070
    jmp .L2073
.L2072:
.L2073:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -64(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2074
    jmp .L2070
    jmp .L2075
.L2074:
.L2075:
    movq $1, %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
.L2076:
    movq -88(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2078
    movq -8(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2079
    movq $0, %rax
    movq %rax, -80(%rbp)
    jmp .L2078
    jmp .L2080
.L2079:
.L2080:
.L2077:
    movq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -88(%rbp)
    jmp .L2076
.L2078:
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2081
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_532
    jmp .L2082
.L2081:
.L2082:
.L2070:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2069
.L2071:
    movq $1, %rax
    jmp .Lret_532
    xorq %rax, %rax
.Lret_532:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__classes_count
Codegen__classes_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 72(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2083
    movq $0, %rax
    jmp .Lret_549
    jmp .L2084
.L2083:
.L2084:
    movq -8(%rbp), %rax
    movq 72(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $3, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    jmp .Lret_549
    xorq %rax, %rax
.Lret_549:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__classes_get_name_start
Codegen__classes_get_name_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 72(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_552
    xorq %rax, %rax
.Lret_552:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__classes_get_name_len
Codegen__classes_get_name_len:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 72(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_553
    xorq %rax, %rax
.Lret_553:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__classes_get_size
Codegen__classes_get_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 72(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_554
    xorq %rax, %rax
.Lret_554:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__class_find_by_name
Codegen__class_find_by_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__classes_count
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2085:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2087
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_len
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2088
    jmp .L2086
    jmp .L2089
.L2088:
.L2089:
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_start
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
.L2090:
    movq -64(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2092
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2093
    movq $0, %rax
    movq %rax, -56(%rbp)
    jmp .L2092
    jmp .L2094
.L2093:
.L2094:
.L2091:
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -64(%rbp)
    jmp .L2090
.L2092:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2095
    movq -40(%rbp), %rax
    jmp .Lret_555
    jmp .L2096
.L2095:
.L2096:
.L2086:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2085
.L2087:
    movq $1, %rax
    negq %rax
    jmp .Lret_555
    xorq %rax, %rax
.Lret_555:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__field_offset
Codegen__field_offset:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2097
    movq $1, %rax
    negq %rax
    jmp .Lret_568
    jmp .L2098
.L2097:
.L2098:
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $4, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L2099:
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2101
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2102
    jmp .L2100
    jmp .L2103
.L2102:
.L2103:
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2104
    jmp .L2100
    jmp .L2105
.L2104:
.L2105:
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L2106:
    movq -80(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2108
    movq -8(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2109
    movq $0, %rax
    movq %rax, -72(%rbp)
    jmp .L2108
    jmp .L2110
.L2109:
.L2110:
.L2107:
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2106
.L2108:
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2111
    movq -8(%rbp), %rax
    movq 80(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    jmp .Lret_568
    jmp .L2112
.L2111:
.L2112:
.L2100:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2099
.L2101:
    movq $1, %rax
    negq %rax
    jmp .Lret_568
    xorq %rax, %rax
.Lret_568:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__method_find_func
Codegen__method_find_func:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2113
    movq $1, %rax
    negq %rax
    jmp .Lret_585
    jmp .L2114
.L2113:
.L2114:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $12, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L2115:
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2117
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2118
    jmp .L2116
    jmp .L2119
.L2118:
.L2119:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2120
    jmp .L2116
    jmp .L2121
.L2120:
.L2121:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2122
    jmp .L2116
    jmp .L2123
.L2122:
.L2123:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    movq $0, %rax
    movq %rax, -80(%rbp)
.L2124:
    movq -80(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2126
    movq -8(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2127
    movq $0, %rax
    movq %rax, -72(%rbp)
    jmp .L2126
    jmp .L2128
.L2127:
.L2128:
.L2125:
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2124
.L2126:
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2129
    movq -48(%rbp), %rax
    jmp .Lret_585
    jmp .L2130
.L2129:
.L2130:
.L2116:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2115
.L2117:
    movq $1, %rax
    negq %rax
    jmp .Lret_585
    xorq %rax, %rax
.Lret_585:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__find_main_body
Codegen__find_main_body:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L2131:
    movq -32(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2132
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2133
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_func
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2135
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2131
    jmp .L2136
.L2135:
.L2136:
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_int
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2137
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2131
    jmp .L2138
.L2137:
.L2138:
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_main
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2139
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2131
    jmp .L2140
.L2139:
.L2140:
    movq -32(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
.L2141:
    movq -40(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2142
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2143
    movq -16(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq %rax, -48(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
.L2145:
    movq -56(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2146
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2147
    movq -8(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2149
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2150
.L2149:
    movq -8(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $125, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2151
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -48(%rbp)
    jmp .L2152
.L2151:
.L2152:
.L2150:
    jmp .L2148
.L2147:
.L2148:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L2145
.L2146:
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2153
    movq $0, %rax
    jmp .Lret_604
    jmp .L2154
.L2153:
.L2154:
    movq -24(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    jmp .Lret_604
    jmp .L2144
.L2143:
.L2144:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2141
.L2142:
    jmp .L2134
.L2133:
.L2134:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2131
.L2132:
    movq $0, %rax
    jmp .Lret_604
    xorq %rax, %rax
.Lret_604:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_expr
Codegen__parse_expr:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_or
    jmp .Lret_629
    xorq %rax, %rax
.Lret_629:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_or
Codegen__parse_or:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_and
    movq %rax, -24(%rbp)
.L2155:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $124, %rax
    pushq %rax
    movq $124, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2156
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2157
    leaq str_56(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2158
.L2157:
.L2158:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2159
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2160
.L2159:
.L2160:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_and
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2161
    leaq str_56(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2162
.L2161:
.L2162:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2163
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_59(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_60(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_62(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_63(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2164
.L2163:
.L2164:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2155
.L2156:
    movq -24(%rbp), %rax
    jmp .Lret_630
    xorq %rax, %rax
.Lret_630:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_and
Codegen__parse_and:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitor
    movq %rax, -24(%rbp)
.L2165:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $38, %rax
    pushq %rax
    movq $38, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2166
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2167
    leaq str_65(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2168
.L2167:
.L2168:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2169
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2170
.L2169:
.L2170:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitor
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2171
    leaq str_65(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2172
.L2171:
.L2172:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2173
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_59(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_60(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_62(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_66(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2174
.L2173:
.L2174:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2165
.L2166:
    movq -24(%rbp), %rax
    jmp .Lret_641
    xorq %rax, %rax
.Lret_641:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_bitor
Codegen__parse_bitor:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitxor
    movq %rax, -24(%rbp)
.L2175:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $124, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2176
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2177
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_67(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2178
.L2177:
.L2178:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2179
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2180
.L2179:
.L2180:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitxor
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2181
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_67(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2182
.L2181:
.L2182:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2183
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_68(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2184
.L2183:
.L2184:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2175
.L2176:
    movq -24(%rbp), %rax
    jmp .Lret_652
    xorq %rax, %rax
.Lret_652:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_bitxor
Codegen__parse_bitxor:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitand
    movq %rax, -24(%rbp)
.L2185:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $94, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2186
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2187
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_69(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2188
.L2187:
.L2188:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2189
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2190
.L2189:
.L2190:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_bitand
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2191
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_69(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2192
.L2191:
.L2192:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2193
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_70(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2194
.L2193:
.L2194:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2185
.L2186:
    movq -24(%rbp), %rax
    jmp .Lret_663
    xorq %rax, %rax
.Lret_663:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_bitand
Codegen__parse_bitand:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_eq
    movq %rax, -24(%rbp)
.L2195:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $38, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2196
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2197
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_71(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2198
.L2197:
.L2198:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2199
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2200
.L2199:
.L2200:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_eq
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2201
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_71(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2202
.L2201:
.L2202:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2203
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_72(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2204
.L2203:
.L2204:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2195
.L2196:
    movq -24(%rbp), %rax
    jmp .Lret_674
    xorq %rax, %rax
.Lret_674:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_eq
Codegen__parse_eq:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_rel
    movq %rax, -24(%rbp)
.L2205:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $33, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2206
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $33, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2207
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2208
.L2207:
.L2208:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_rel
    movq %rax, -40(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2209
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2211
    leaq str_73(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2212
.L2211:
.L2212:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2213
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_74(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_75(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_76(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_77(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2215
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_62(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2216
.L2215:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_78(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2216:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2214
.L2213:
.L2214:
    jmp .L2210
.L2209:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ptr_ty
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2217
    leaq str_79(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2218
.L2217:
.L2218:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ptr_ty
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2219
    leaq str_79(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2220
.L2219:
.L2220:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2221
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_80(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2223
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_62(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2224
.L2223:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_78(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2224:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2222
.L2221:
.L2222:
.L2210:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2205
.L2206:
    movq -24(%rbp), %rax
    jmp .Lret_685
    xorq %rax, %rax
.Lret_685:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_rel
Codegen__parse_rel:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_add
    movq %rax, -24(%rbp)
.L2225:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $60, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $60, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2226
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $60, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $60, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    movq %rax, -48(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    movq $61, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    movq %rax, -56(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2227
    leaq str_81(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2228
.L2227:
.L2228:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2229
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2230
.L2229:
.L2230:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_add
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2231
    leaq str_81(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2232
.L2231:
.L2232:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2233
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_80(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2235
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_82(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2236
.L2235:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2237
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_83(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2238
.L2237:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2239
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_84(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2240
.L2239:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2241
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_85(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2242
.L2241:
.L2242:
.L2240:
.L2238:
.L2236:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2234
.L2233:
.L2234:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2225
.L2226:
    movq -24(%rbp), %rax
    jmp .Lret_706
    xorq %rax, %rax
.Lret_706:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_add
Codegen__parse_add:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_mul
    movq %rax, -24(%rbp)
.L2243:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $43, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $45, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2244
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $45, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2245
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2247
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_86(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2248
.L2247:
.L2248:
    jmp .L2246
.L2245:
.L2246:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2249
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2250
.L2249:
.L2250:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_mul
    movq %rax, -48(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2251
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2253
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_86(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2254
.L2253:
.L2254:
    jmp .L2252
.L2251:
.L2252:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2255
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2257
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_87(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_88(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_89(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2258
.L2257:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_90(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2258:
    jmp .L2256
.L2255:
.L2256:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2259
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2260
.L2259:
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2261
    movq $2, %rax
    movq %rax, -24(%rbp)
    jmp .L2262
.L2261:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2263
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2264
.L2263:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_86(%rip), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
.L2264:
.L2262:
.L2260:
    jmp .L2243
.L2244:
    movq -24(%rbp), %rax
    jmp .Lret_725
    xorq %rax, %rax
.Lret_725:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_mul
Codegen__parse_mul:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_unary
    movq %rax, -24(%rbp)
.L2265:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $47, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2266
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $47, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2267
    leaq str_91(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2268
.L2267:
.L2268:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2269
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2270
.L2269:
.L2270:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_unary
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2271
    leaq str_91(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2272
.L2271:
.L2272:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2273
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2275
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_87(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_88(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_92(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_93(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2277
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_94(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2278
.L2277:
.L2278:
    jmp .L2276
.L2275:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_95(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2276:
    jmp .L2274
.L2273:
.L2274:
    movq $1, %rax
    movq %rax, -24(%rbp)
    jmp .L2265
.L2266:
    movq -24(%rbp), %rax
    jmp .Lret_748
    xorq %rax, %rax
.Lret_748:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_unary
Codegen__parse_unary:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $33, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2279
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_unary
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2281
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_96(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2282
.L2281:
.L2282:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2283
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_78(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_64(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2284
.L2283:
.L2284:
    movq $1, %rax
    jmp .Lret_763
    jmp .L2280
.L2279:
.L2280:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $38, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2285
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2287
    leaq str_97(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2288
.L2287:
.L2288:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -48(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2289
    leaq str_98(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2290
.L2289:
.L2290:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2291
    movq -8(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_off
    movq %rax, -64(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_99(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_100(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2292
.L2291:
.L2292:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    jmp .Lret_763
    jmp .L2286
.L2285:
.L2286:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2293
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_unary
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2295
    leaq str_101(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2296
.L2295:
.L2296:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2297
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_102(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2298
.L2297:
.L2298:
    movq $1, %rax
    jmp .Lret_763
    jmp .L2294
.L2293:
.L2294:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $45, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2299
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_unary
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2301
    leaq str_103(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2302
.L2301:
.L2302:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2303
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_104(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2304
.L2303:
.L2304:
    movq $1, %rax
    jmp .Lret_763
    jmp .L2300
.L2299:
.L2300:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_primary
    jmp .Lret_763
    xorq %rax, %rax
.Lret_763:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_primary
Codegen__parse_primary:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2305
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $88, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2307
    movq $2, %rax
    movq %rax, -56(%rbp)
.L2309:
    movq -56(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2311
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2312
    movq -48(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2313
.L2312:
    movq -64(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2314
    movq -48(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2315
.L2314:
    movq -64(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2316
    movq -48(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2317
.L2316:
.L2317:
.L2315:
.L2313:
.L2310:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L2309
.L2311:
    jmp .L2308
.L2307:
    movq $0, %rax
    movq %rax, -56(%rbp)
.L2318:
    movq -56(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2320
    movq -48(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $48, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
.L2319:
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    jmp .L2318
.L2320:
.L2308:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2321
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_105(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    leaq str_106(%rip), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_line_num
    jmp .L2322
.L2321:
.L2322:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $46, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2323
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2324
.L2323:
.L2324:
    movq $1, %rax
    jmp .Lret_790
    jmp .L2306
.L2305:
.L2306:
    movq -24(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2325
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -40(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -80(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__strtab_intern
    movq %rax, -88(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2327
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_107(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_54(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_label_num
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_108(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2328
.L2327:
.L2328:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $2, %rax
    jmp .Lret_790
    jmp .L2326
.L2325:
.L2326:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2329
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_true
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2331
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2333
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_109(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2334
.L2333:
.L2334:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    jmp .Lret_790
    jmp .L2332
.L2331:
.L2332:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_false
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2335
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2337
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_110(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2338
.L2337:
.L2338:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    jmp .Lret_790
    jmp .L2336
.L2335:
.L2336:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_nullptr
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2339
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2341
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_110(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2342
.L2341:
.L2342:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    jmp .Lret_790
    jmp .L2340
.L2339:
.L2340:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -96(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -104(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__class_find_by_name
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -120(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2343
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2345
    leaq str_111(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2346
.L2345:
.L2346:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2347
    leaq str_112(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2348
.L2347:
.L2348:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2349
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_113(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -96(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2350
.L2349:
.L2350:
    movq $1000, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -120(%rbp)
    jmp .L2344
.L2343:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2351
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_txtin
    movq %rax, -128(%rbp)
    movq -96(%rbp), %rax
    movq %rax, -136(%rbp)
    movq -104(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $99, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $111, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $112, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $121, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    movq %rax, -152(%rbp)
    movq $1, %rax
    negq %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq %rax, -168(%rbp)
    movq -8(%rbp), %rax
    movq 152(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 136(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2353
    movq -8(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 136(%rax), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__method_find_func
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $11, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2355
    movq $1, %rax
    movq %rax, -168(%rbp)
    jmp .L2356
.L2355:
.L2356:
    jmp .L2354
.L2353:
.L2354:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2357
    leaq str_114(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2358
.L2357:
.L2358:
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq $0, %rax
    movq %rax, -184(%rbp)
    movq -168(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2359
    movq -8(%rbp), %rax
    movq 152(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2361
    leaq str_115(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2362
.L2361:
.L2362:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2363
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_116(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 152(%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_100(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2364
.L2363:
.L2364:
    movq $1, %rax
    movq %rax, -176(%rbp)
    jmp .L2360
.L2359:
.L2360:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2365
.L2367:
    movq $1, %rax
    testq %rax, %rax
    jz .L2368
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -192(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2369
    movq -192(%rbp), %rax
    movq %rax, -184(%rbp)
    jmp .L2370
.L2369:
.L2370:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2371
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2372
.L2371:
.L2372:
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -176(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2373
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2367
    jmp .L2374
.L2373:
.L2374:
    jmp .L2368
    jmp .L2367
.L2368:
    jmp .L2366
.L2365:
.L2366:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2375
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2376
.L2375:
.L2376:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -176(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2377
    leaq str_118(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2378
.L2377:
.L2378:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2379
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -200(%rbp)
.L2381:
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2383
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2384
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_75(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2385
.L2384:
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2386
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_119(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2387
.L2386:
    movq -200(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2388
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_120(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2389
.L2388:
    movq -200(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2390
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_121(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2391
.L2390:
    movq -200(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2392
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_122(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2393
.L2392:
    movq -200(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2394
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_123(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2395
.L2394:
.L2395:
.L2393:
.L2391:
.L2389:
.L2387:
.L2385:
.L2382:
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -200(%rbp)
    jmp .L2381
.L2383:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_124(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -168(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2396
    movq -8(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_fn_symbol
    jmp .L2397
.L2396:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2398
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2400
    leaq str_125(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2401
.L2400:
.L2401:
    movq -184(%rbp), %rax
    pushq %rax
    popq %rdi
    call class_idx_from_ty
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2402
    leaq str_126(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2403
.L2402:
.L2403:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_127(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_start
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_len
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    jmp .L2399
.L2398:
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -136(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
.L2399:
.L2397:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2380
.L2379:
.L2380:
    movq -168(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2404
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -120(%rbp)
    jmp .L2405
.L2404:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2406
    movq -184(%rbp), %rax
    movq %rax, -120(%rbp)
    jmp .L2407
.L2406:
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2408
    movq $2, %rax
    movq %rax, -120(%rbp)
    jmp .L2409
.L2408:
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__fn_ret_ty_plain
    movq %rax, -120(%rbp)
.L2409:
.L2407:
.L2405:
    jmp .L2352
.L2351:
    movq -112(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2410
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $2000, %rax
    pushq %rax
    movq -112(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -120(%rbp)
    jmp .L2411
.L2410:
    movq -96(%rbp), %rax
    movq %rax, -216(%rbp)
    movq -104(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2412
    movq -8(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__globals_find
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2414
    leaq str_98(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2415
.L2414:
.L2415:
    movq -8(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__globals_get_type
    movq %rax, -248(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__globals_get_val
    movq %rax, -256(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2416
    movq -248(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2418
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_107(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_54(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_label_num
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_108(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2419
.L2418:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_105(%rip), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    leaq str_106(%rip), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_line_num
.L2419:
    jmp .L2417
.L2416:
.L2417:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -248(%rbp), %rax
    movq %rax, -120(%rbp)
    jmp .L2413
.L2412:
    movq -8(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_type
    movq %rax, -120(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2420
    movq -8(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_off
    movq %rax, -264(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_116(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_100(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2421
.L2420:
.L2421:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
.L2413:
.L2411:
.L2352:
.L2344:
.L2422:
    movq $1, %rax
    testq %rax, %rax
    jz .L2423
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2424
    jmp .L2423
    jmp .L2425
.L2424:
.L2425:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $46, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $45, %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2426
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2428
    leaq str_128(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2429
.L2428:
.L2429:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2430
    leaq str_129(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2431
.L2430:
.L2431:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -272(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -280(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -288(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call class_idx_from_ty
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2432
    leaq str_130(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2433
.L2432:
.L2433:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2434
    movq -8(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -280(%rbp), %rax
    pushq %rax
    movq -288(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__method_find_func
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2436
    leaq str_131(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2437
.L2436:
.L2437:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -296(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $11, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -304(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, -176(%rbp)
    movq -304(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ref_ty
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2438
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2440
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2441
.L2440:
.L2441:
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -176(%rbp)
    jmp .L2439
.L2438:
.L2439:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2442
.L2444:
    movq $1, %rax
    testq %rax, %rax
    jz .L2445
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2446
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2447
.L2446:
.L2447:
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -176(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2448
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2444
    jmp .L2449
.L2448:
.L2449:
    jmp .L2445
    jmp .L2444
.L2445:
    jmp .L2443
.L2442:
.L2443:
    movq -304(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ref_ty
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2450
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_132(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2451
.L2450:
.L2451:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2452
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2453
.L2452:
.L2453:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -176(%rbp), %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2454
    leaq str_118(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2455
.L2454:
.L2455:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2456
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -200(%rbp)
.L2458:
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2460
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2461
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_75(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2462
.L2461:
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2463
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_119(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2464
.L2463:
    movq -200(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2465
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_120(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2466
.L2465:
    movq -200(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2467
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_121(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2468
.L2467:
    movq -200(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2469
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_122(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2470
.L2469:
    movq -200(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2471
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_123(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2472
.L2471:
.L2472:
.L2470:
.L2468:
.L2466:
.L2464:
.L2462:
.L2459:
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -200(%rbp)
    jmp .L2458
.L2460:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_124(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -296(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_fn_symbol
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2457
.L2456:
.L2457:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -296(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -120(%rbp)
    jmp .L2422
    jmp .L2435
.L2434:
.L2435:
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call is_class_ref_ty
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2473
    leaq str_133(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2474
.L2473:
.L2474:
    movq -8(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -280(%rbp), %rax
    pushq %rax
    movq -288(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__field_offset
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2475
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_134(%rip), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2476
.L2475:
.L2476:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2477
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_135(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_136(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2478
.L2477:
.L2478:
    movq $1, %rax
    movq %rax, -120(%rbp)
    jmp .L2422
    jmp .L2427
.L2426:
.L2427:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $91, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2479
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2481
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2482
.L2481:
.L2482:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2483
    leaq str_137(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2484
.L2483:
.L2484:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $93, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2485
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_138(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2486
.L2485:
.L2486:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2487
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_87(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_139(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -120(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2489
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_140(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_141(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2490
.L2489:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_142(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_102(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2490:
    jmp .L2488
.L2487:
.L2488:
    movq -120(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2491
    movq $2, %rax
    movq %rax, -120(%rbp)
    jmp .L2492
.L2491:
    movq $1, %rax
    movq %rax, -120(%rbp)
.L2492:
    jmp .L2422
    jmp .L2480
.L2479:
.L2480:
    jmp .L2423
    jmp .L2422
.L2423:
    movq -120(%rbp), %rax
    jmp .Lret_790
    jmp .L2330
.L2329:
.L2330:
    movq -24(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2493
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -320(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2495
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2496
.L2495:
.L2496:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    jmp .Lret_790
    jmp .L2494
.L2493:
.L2494:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_143(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    movq $1, %rax
    jmp .Lret_790
    xorq %rax, %rax
.Lret_790:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_runtime_helpers
Codegen__emit_runtime_helpers:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_144(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_145(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_146(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_147(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_148(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_149(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_150(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_151(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_152(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_153(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_154(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_155(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_158(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_159(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_160(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_161(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_162(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_163(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_164(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_168(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_169(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_170(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_171(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_172(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_173(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_174(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_175(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_176(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_177(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_178(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_179(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_180(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_181(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_182(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_183(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_184(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_185(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_186(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_169(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_187(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_188(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_189(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_190(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_191(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_192(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_193(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_194(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_195(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_196(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_197(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_198(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_199(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_87(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_200(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_201(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_202(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_203(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_204(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_205(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_206(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_207(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_208(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_200(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_209(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_197(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_198(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_210(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_110(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_211(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_212(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    xorq %rax, %rax
.Lret_983:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_class_helpers
Codegen__emit_class_helpers:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__classes_count
    movq %rax, -16(%rbp)
    movq $0, %rax
    movq %rax, -24(%rbp)
.L2497:
    movq -24(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2499
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_start
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_name_len
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__classes_get_size
    movq %rax, -48(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_213(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_214(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_215(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_45(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_216(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_217(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_169(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_218(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_219(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_216(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_220(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_171(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_127(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_45(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_185(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_158(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_216(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_217(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_169(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_218(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_191(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_216(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_220(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_173(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_212(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2498:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    jmp .L2497
.L2499:
    xorq %rax, %rax
.Lret_984:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__new_label
Codegen__new_label:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 112(%rax), %rax
    movq %rax, -16(%rbp)
    movq -8(%rbp), %rax
    movq 112(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq -8(%rbp), %r10
    movq %rax, 112(%r10)
    movq -16(%rbp), %rax
    jmp .Lret_988
    xorq %rax, %rax
.Lret_988:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_label
Codegen__emit_label:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_221(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_45(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    xorq %rax, %rax
.Lret_989:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__emit_fn_symbol
Codegen__emit_fn_symbol:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2500
    leaq str_222(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2501
.L2500:
.L2501:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2502
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    xorq %rax, %rax
    jmp .Lret_990
    jmp .L2503
.L2502:
.L2503:
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -48(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -56(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -64(%rbp)
    movq -8(%rbp), %rax
    movq 56(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -72(%rbp)
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_223(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    movq 32(%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call file_write
    xorq %rax, %rax
.Lret_990:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_block
Codegen__parse_block:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2504
    leaq str_224(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2505
.L2504:
.L2505:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq %rax, -40(%rbp)
.L2506:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2507
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2508
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2510
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2511
.L2510:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $125, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2512
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -40(%rbp)
    jmp .L2513
.L2512:
.L2513:
.L2511:
    jmp .L2509
.L2508:
.L2509:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2506
.L2507:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2514
    leaq str_225(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2515
.L2514:
.L2515:
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    movq %rax, (%r10)
    xorq %rax, %rax
.Lret_995:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_bind_assign
Codegen__parse_bind_assign:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_int
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2516
    movq $1, %rax
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2517
.L2516:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_float_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2518
    movq $1, %rax
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2519
.L2518:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_bool_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2520
    movq $1, %rax
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2521
.L2520:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2522
    movq $2, %rax
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2523
.L2522:
.L2523:
.L2521:
.L2519:
.L2517:
.L2524:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2525
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2524
.L2525:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2526
    leaq str_226(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2527
.L2526:
.L2527:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -48(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -56(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_is
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2528
    leaq str_227(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2529
.L2528:
.L2529:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -64(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2530
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2532
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2533
.L2532:
.L2533:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2531
.L2530:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2534
    leaq str_229(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2535
.L2534:
.L2535:
.L2531:
    movq -64(%rbp), %rax
    movq %rax, -72(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2536
    movq -40(%rbp), %rax
    movq %rax, -72(%rbp)
    jmp .L2537
.L2536:
.L2537:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2538
    leaq str_230(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2539
.L2538:
.L2539:
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2540
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__vars_count
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2542
    movq $1, %rax
    movq %rax, -96(%rbp)
    jmp .L2543
.L2542:
.L2543:
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_add
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -80(%rbp)
    jmp .L2541
.L2540:
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_type
    pushq %rax
    movq -72(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2544
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_mutable
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2546
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call VecInt__set
    jmp .L2547
.L2546:
    leaq str_231(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
.L2547:
    jmp .L2545
.L2544:
.L2545:
.L2541:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2548
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_off
    movq %rax, -88(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_232(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_233(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2549
.L2548:
.L2549:
    xorq %rax, %rax
.Lret_1008:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_stmt
Codegen__parse_stmt:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2550
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2551
.L2550:
.L2551:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2552
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2553
.L2552:
.L2553:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2554
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2556
    leaq str_234(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2557
.L2556:
.L2557:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -32(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -40(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2558
    leaq str_98(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2559
.L2558:
.L2559:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2560
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_off
    movq %rax, -56(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_116(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_100(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_57(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2561
.L2560:
.L2561:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_is
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2562
    leaq str_227(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2563
.L2562:
.L2563:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2564
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_235(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2565
.L2564:
.L2565:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2566
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2567
.L2566:
.L2567:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2568
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_58(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_236(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2569
.L2568:
.L2569:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2555
.L2554:
.L2555:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2570
    leaq str_237(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2571
.L2570:
.L2571:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_if
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2572
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2574
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2575
.L2574:
.L2575:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2576
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2577
.L2576:
.L2577:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -72(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -80(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2578
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_239(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2579
.L2578:
.L2579:
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_block
    movq -8(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2580
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_240(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2581
.L2580:
.L2581:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_else
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2582
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_if
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2584
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt
    jmp .L2585
.L2584:
    movq $0, %rax
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq -104(%rbp), %rax
    pushq %rax
    leaq -112(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_block
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
.L2585:
    jmp .L2583
.L2582:
.L2583:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2586
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2587
.L2586:
.L2587:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2573
.L2572:
.L2573:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_while
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2588
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2590
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2591
.L2590:
.L2591:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -120(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -80(%rbp)
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2592
    movq -8(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2593
.L2592:
.L2593:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2594
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2595
.L2594:
.L2595:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2596
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_239(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2597
.L2596:
.L2597:
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_block
    movq -8(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2598
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_240(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2599
.L2598:
.L2599:
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__pop
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__pop
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2589
.L2588:
.L2589:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_for
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2600
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2602
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2603
.L2602:
.L2603:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2604
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2605
.L2604:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_bind_assign
.L2605:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -128(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -136(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__new_label
    movq %rax, -80(%rbp)
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2606
    movq -8(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2607
.L2606:
.L2607:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2608
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2610
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_109(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2611
.L2610:
.L2611:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2609
.L2608:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2612
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2613
.L2612:
.L2613:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
.L2609:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2614
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_61(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_239(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2615
.L2614:
.L2615:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -144(%rbp)
    movq $1, %rax
    movq %rax, -152(%rbp)
.L2616:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2617
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2618
    jmp .L2617
    jmp .L2619
.L2618:
.L2619:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2616
.L2617:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    movq %rax, -160(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2620
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_117(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2621
.L2620:
.L2621:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq %rax, -96(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_block
    movq -8(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2622
    movq -8(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2623
.L2622:
.L2623:
    movq -144(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2624
    movq -144(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq -168(%rbp), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_bind_assign
    jmp .L2625
.L2624:
.L2625:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2626
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_240(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_label
    jmp .L2627
.L2626:
.L2627:
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__pop
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__pop
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2601
.L2600:
.L2601:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_break
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2628
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2630
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2631
.L2630:
.L2631:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2632
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2634
    leaq str_241(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2635
.L2634:
.L2635:
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -184(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_240(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2633
.L2632:
.L2633:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2629
.L2628:
.L2629:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_continue
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2636
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2638
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2639
.L2638:
.L2639:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2640
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2642
    leaq str_242(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2643
.L2642:
.L2643:
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -184(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_240(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2641
.L2640:
.L2641:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2637
.L2636:
.L2637:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_return
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2644
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2646
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    jmp .L2647
.L2646:
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2648
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_110(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2649
.L2648:
.L2649:
.L2647:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2650
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2651
.L2650:
.L2651:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2652
    movq -8(%rbp), %rax
    movq 120(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2654
    leaq str_243(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2655
.L2654:
.L2655:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_244(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 120(%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    jmp .L2653
.L2652:
.L2653:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2645
.L2644:
.L2645:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_txtout
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2656
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2658
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2659
.L2658:
.L2659:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq %rax, -192(%rbp)
.L2660:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2661
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2662
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2664
    leaq str_245(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2665
.L2664:
.L2665:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2663
.L2662:
.L2663:
    movq $0, %rax
    movq %rax, -192(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -200(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2666
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_74(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -200(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2668
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_246(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2669
.L2668:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_247(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2669:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_248(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_249(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2667
.L2666:
.L2667:
    jmp .L2660
.L2661:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2670
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2671
.L2670:
.L2671:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2672
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_250(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_248(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_249(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2673
.L2672:
.L2673:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2657
.L2656:
.L2657:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_txtout_nl
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2674
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2676
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2677
.L2676:
.L2677:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq %rax, -192(%rbp)
.L2678:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2679
    movq -192(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2680
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2682
    leaq str_245(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2683
.L2682:
.L2683:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    jmp .L2681
.L2680:
.L2681:
    movq $0, %rax
    movq %rax, -192(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -200(%rbp)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2684
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_74(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -200(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2686
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_246(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2687
.L2686:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_247(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
.L2687:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_248(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_249(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2685
.L2684:
.L2685:
    jmp .L2678
.L2679:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2688
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2689
.L2688:
.L2689:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2675
.L2674:
.L2675:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_out
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2690
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2692
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2693
.L2692:
.L2693:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq %rax, -200(%rbp)
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2694
    leaq str_251(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2695
.L2694:
.L2695:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2696
    leaq str_117(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2697
.L2696:
.L2697:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2698
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2699
.L2698:
.L2699:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2700
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_218(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_252(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2701
.L2700:
.L2701:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2691
.L2690:
.L2691:
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $46, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $45, %rax
    pushq %rax
    movq $62, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct2
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_is
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2702
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -208(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -216(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_find
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2704
    leaq str_253(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2705
.L2704:
.L2705:
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_type
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    popq %rdi
    call class_idx_from_ty
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2706
    leaq str_254(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2707
.L2706:
.L2707:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -240(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -248(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    movq -248(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__field_offset
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2708
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_134(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2709
.L2708:
.L2709:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2710
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2711
.L2710:
.L2711:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rax
    movq 24(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2712
    movq -8(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__vars_get_off
    movq %rax, -256(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_116(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_255(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_256(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_257(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2713
.L2712:
.L2713:
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2703
.L2702:
.L2703:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_int
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_float_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_bool_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_is
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2714
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_bind_assign
    xorq %rax, %rax
    jmp .Lret_1043
    jmp .L2715
.L2714:
.L2715:
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__parse_expr
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2716
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_228(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2717
.L2716:
.L2717:
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    movq (%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, (%r10)
    xorq %rax, %rax
    jmp .Lret_1043
    xorq %rax, %rax
.Lret_1043:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__parse_stmt_list
Codegen__parse_stmt_list:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -32(%rbp)
.L2718:
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2719
    movq -8(%rbp), %rax
    pushq %rax
    leaq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt
    jmp .L2718
.L2719:
    xorq %rax, %rax
.Lret_1212:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Codegen__compile
Codegen__compile:
    pushq %rbp
    movq %rsp, %rbp
    subq $544, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    call __zn_new_VecInt
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    movq -24(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 56(%r10)
    movq -32(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 64(%r10)
    movq -40(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 72(%r10)
    movq -48(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 80(%r10)
    call __zn_new_VecInt
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    movq $0, %rax
    movq %rax, -80(%rbp)
.L2720:
    movq -80(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2721
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_class_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2722
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2724
    leaq str_258(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2725
.L2724:
.L2725:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -88(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -96(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
.L2726:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2727
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2726
.L2727:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2728
    leaq str_259(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2729
.L2728:
.L2729:
    movq -104(%rbp), %rax
    movq %rax, -112(%rbp)
    movq $1, %rax
    movq %rax, -120(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
.L2730:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2731
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2732
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2734
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -120(%rbp)
    jmp .L2735
.L2734:
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $125, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2736
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -120(%rbp)
    jmp .L2737
.L2736:
.L2737:
.L2735:
    jmp .L2733
.L2732:
.L2733:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2730
.L2731:
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2738
    leaq str_260(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2739
.L2738:
.L2739:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $3, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -136(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -40(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq $0, %rax
    movq %rax, -144(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
.L2740:
    movq -152(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2741
    movq -152(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_func
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2742
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2744
    leaq str_261(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2745
.L2744:
.L2745:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2746
    leaq str_262(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2747
.L2746:
.L2747:
    movq $1, %rax
    movq %rax, -160(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_void_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2748
    movq $3, %rax
    movq %rax, -160(%rbp)
    jmp .L2749
.L2748:
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2750
    movq $2, %rax
    movq %rax, -160(%rbp)
    jmp .L2751
.L2750:
.L2751:
.L2749:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -168(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -176(%rbp)
    movq -152(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
.L2752:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2753
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
    jmp .L2752
.L2753:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2754
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2755
.L2754:
.L2755:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -192(%rbp)
    movq $1, %rax
    movq %rax, -200(%rbp)
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
.L2756:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2757
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2758
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2760
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -200(%rbp)
    jmp .L2761
.L2760:
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2762
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -200(%rbp)
    jmp .L2763
.L2762:
.L2763:
.L2761:
    jmp .L2759
.L2758:
.L2759:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
    jmp .L2756
.L2757:
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2764
    leaq str_263(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2765
.L2764:
.L2765:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -208(%rbp)
.L2766:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2767
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
    jmp .L2766
.L2767:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2768
    leaq str_224(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2769
.L2768:
.L2769:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -216(%rbp)
    movq $1, %rax
    movq %rax, -224(%rbp)
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
.L2770:
    movq -184(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2771
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2772
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2774
    movq -224(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -224(%rbp)
    jmp .L2775
.L2774:
    movq -8(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    movq $125, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2776
    movq -224(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -224(%rbp)
    jmp .L2777
.L2776:
.L2777:
.L2775:
    jmp .L2773
.L2772:
.L2773:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
    jmp .L2770
.L2771:
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2778
    leaq str_264(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2779
.L2778:
.L2779:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -232(%rbp)
    movq $0, %rax
    movq %rax, -240(%rbp)
    movq -192(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2780
    movq -192(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -248(%rbp)
    movq $0, %rax
    movq %rax, -256(%rbp)
.L2782:
    movq -248(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -248(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -248(%rbp), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2783
    movq -256(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -256(%rbp)
    movq -248(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -248(%rbp)
    jmp .L2782
.L2783:
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2784
    movq $1, %rax
    movq %rax, -240(%rbp)
    jmp .L2785
.L2784:
.L2785:
    jmp .L2781
.L2780:
.L2781:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -168(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -176(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -240(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -232(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2740
    jmp .L2743
.L2742:
.L2743:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2786
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -264(%rbp)
.L2788:
    movq -264(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2789
    movq -264(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -264(%rbp)
    jmp .L2788
.L2789:
    movq -264(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2790
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -272(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -264(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -280(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -48(%rbp), %rax
    pushq %rax
    movq -272(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -48(%rbp), %rax
    pushq %rax
    movq -280(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -48(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -144(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -144(%rbp)
    movq -264(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2740
    jmp .L2791
.L2790:
.L2791:
    jmp .L2787
.L2786:
.L2787:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2740
.L2741:
    movq -40(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call VecInt__set
    movq -128(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2720
    jmp .L2723
.L2722:
.L2723:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_is
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2792
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -288(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -296(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -304(%rbp)
    movq $0, %rax
    movq %rax, -312(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2794
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -328(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -336(%rbp)
    movq $0, %rax
    movq %rax, -344(%rbp)
    movq -336(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $120, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $88, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2796
    movq $2, %rax
    movq %rax, -152(%rbp)
.L2798:
    movq -152(%rbp), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2800
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $57, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2801
    movq -344(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $48, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -344(%rbp)
    jmp .L2802
.L2801:
    movq -352(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $70, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2803
    movq -344(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $65, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -344(%rbp)
    jmp .L2804
.L2803:
    movq -352(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $102, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2805
    movq -344(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -352(%rbp), %rax
    pushq %rax
    movq $97, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -344(%rbp)
    jmp .L2806
.L2805:
.L2806:
.L2804:
.L2802:
.L2799:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2798
.L2800:
    jmp .L2797
.L2796:
    movq $0, %rax
    movq %rax, -152(%rbp)
.L2807:
    movq -152(%rbp), %rax
    pushq %rax
    movq -336(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2809
    movq -344(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__byte_at
    pushq %rax
    movq $48, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -344(%rbp)
.L2808:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2807
.L2809:
.L2797:
    movq $1, %rax
    movq %rax, -304(%rbp)
    movq -344(%rbp), %rax
    movq %rax, -312(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2795
.L2794:
    movq -320(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2810
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -328(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -336(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -328(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -336(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__strtab_intern
    movq %rax, -360(%rbp)
    movq $2, %rax
    movq %rax, -304(%rbp)
    movq -360(%rbp), %rax
    movq %rax, -312(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2811
.L2810:
    movq -320(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_true
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2812
    movq $1, %rax
    movq %rax, -304(%rbp)
    movq $1, %rax
    movq %rax, -312(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2813
.L2812:
    movq -320(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_false
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2814
    movq $1, %rax
    movq %rax, -304(%rbp)
    movq $0, %rax
    movq %rax, -312(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2815
.L2814:
    movq -320(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_nullptr
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2816
    movq $1, %rax
    movq %rax, -304(%rbp)
    movq $0, %rax
    movq %rax, -312(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2817
.L2816:
    movq $0, %rax
    movq %rax, -304(%rbp)
.L2817:
.L2815:
.L2813:
.L2811:
.L2795:
    movq -304(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $59, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2818
    movq -32(%rbp), %rax
    pushq %rax
    movq -288(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -32(%rbp), %rax
    pushq %rax
    movq -296(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -32(%rbp), %rax
    pushq %rax
    movq -304(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -32(%rbp), %rax
    pushq %rax
    movq -312(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2720
    jmp .L2819
.L2818:
.L2819:
    jmp .L2793
.L2792:
.L2793:
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_func
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2820
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2822
    leaq str_261(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2823
.L2822:
.L2823:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2824
    leaq str_265(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2825
.L2824:
.L2825:
    movq $1, %rax
    movq %rax, -160(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_void_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2826
    movq $3, %rax
    movq %rax, -160(%rbp)
    jmp .L2827
.L2826:
    movq -8(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2828
    movq $2, %rax
    movq %rax, -160(%rbp)
    jmp .L2829
.L2828:
.L2829:
.L2827:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -288(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -296(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
.L2830:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2831
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2830
.L2831:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2832
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_238(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__error_at
    jmp .L2833
.L2832:
.L2833:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -192(%rbp)
    movq $1, %rax
    movq %rax, -120(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
.L2834:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2835
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2836
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2838
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -120(%rbp)
    jmp .L2839
.L2838:
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2840
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -120(%rbp)
    jmp .L2841
.L2840:
.L2841:
.L2839:
    jmp .L2837
.L2836:
.L2837:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2834
.L2835:
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2842
    leaq str_263(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2843
.L2842:
.L2843:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -208(%rbp)
.L2844:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2845
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2844
.L2845:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2846
    leaq str_224(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2847
.L2846:
.L2847:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -216(%rbp)
    movq $1, %rax
    movq %rax, -120(%rbp)
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
.L2848:
    movq -104(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 16(%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2849
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2850
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $123, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2852
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -120(%rbp)
    jmp .L2853
.L2852:
    movq -8(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    movq $125, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2854
    movq -120(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -120(%rbp)
    jmp .L2855
.L2854:
.L2855:
.L2853:
    jmp .L2851
.L2850:
.L2851:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -104(%rbp)
    jmp .L2848
.L2849:
    movq -120(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2856
    leaq str_266(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2857
.L2856:
.L2857:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -288(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -296(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -232(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2720
    jmp .L2821
.L2820:
.L2821:
    movq -80(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -80(%rbp)
    jmp .L2720
.L2721:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $12, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2858
    leaq str_267(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2859
.L2858:
.L2859:
    movq $0, %rax
    movq %rax, -376(%rbp)
.L2860:
    movq -376(%rbp), %rax
    pushq %rax
    movq -368(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2862
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2863
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 40(%r10)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    jmp .L2864
.L2863:
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
.L2864:
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -384(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -392(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $11, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -400(%rbp)
    movq -384(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 128(%r10)
    movq -392(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 136(%r10)
    movq -400(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 144(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 152(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 160(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 168(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 176(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $7, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -408(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -416(%rbp)
    movq -408(%rbp), %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -432(%rbp)
.L2865:
    movq -424(%rbp), %rax
    pushq %rax
    movq -416(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2866
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2867
    jmp .L2866
    jmp .L2868
.L2867:
.L2868:
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    movq %rax, -440(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_char_kw
    movq %rax, -448(%rbp)
    movq $1, %rax
    movq %rax, -456(%rbp)
    movq -440(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2869
    movq $2, %rax
    movq %rax, -456(%rbp)
    jmp .L2870
.L2869:
.L2870:
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -256(%rbp)
.L2871:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2872
    movq -256(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -256(%rbp)
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2871
.L2872:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2873
    leaq str_268(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2874
.L2873:
.L2874:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -464(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -472(%rbp)
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -480(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $91, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2875
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $93, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2877
    movq -424(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2878
.L2877:
.L2878:
    movq $1, %rax
    movq %rax, -480(%rbp)
    jmp .L2876
.L2875:
.L2876:
    movq -384(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -400(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -432(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2879
    movq $1000, %rax
    pushq %rax
    movq -392(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -456(%rbp)
    jmp .L2880
.L2879:
    movq -448(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -480(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2881
    movq $4, %rax
    movq %rax, -456(%rbp)
    jmp .L2882
.L2881:
    movq -448(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2883
    movq $2, %rax
    movq %rax, -456(%rbp)
    jmp .L2884
.L2883:
.L2884:
.L2882:
.L2880:
    movq -432(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -488(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -464(%rbp), %rax
    pushq %rax
    movq -472(%rbp), %rax
    pushq %rax
    movq -456(%rbp), %rax
    pushq %rax
    movq -488(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_add
    movq -384(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -400(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -432(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2885
    movq -488(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 152(%r10)
    jmp .L2886
.L2885:
.L2886:
    movq -432(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -432(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2887
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2865
    jmp .L2888
.L2887:
.L2888:
    jmp .L2866
    jmp .L2865
.L2866:
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 24(%r10)
    movq -8(%rbp), %rax
    movq 112(%rax), %rax
    movq -8(%rbp), %r10
    movq %rax, 120(%r10)
    movq -8(%rbp), %rax
    movq 112(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq -8(%rbp), %r10
    movq %rax, 112(%r10)
    movq -72(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 120(%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -496(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -504(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -496(%rbp), %rax
    pushq %rax
    movq -504(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__vars_count
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rdx, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2889
    movq -512(%rbp), %rax
    pushq %rax
    movq $16, %rax
    pushq %rax
    movq -512(%rbp), %rax
    pushq %rax
    movq $16, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    movq %rdx, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -512(%rbp)
    jmp .L2890
.L2889:
.L2890:
    movq -56(%rbp), %rax
    pushq %rax
    movq -512(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -64(%rbp), %rax
    pushq %rax
    movq -432(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
.L2861:
    movq -376(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -376(%rbp)
    jmp .L2860
.L2862:
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_open_write
    movq %rax, -520(%rbp)
    movq -520(%rbp), %rax
    pushq %rax
    movq $1, %rax
    negq %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2891
    leaq str_269(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2892
.L2891:
.L2892:
    movq -520(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 32(%r10)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_270(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_271(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_272(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_273(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_274(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_275(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq $92, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_byte
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__strtab_count
    movq %rax, -528(%rbp)
    movq $0, %rax
    movq %rax, -152(%rbp)
.L2893:
    movq -152(%rbp), %rax
    pushq %rax
    movq -528(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2895
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__strtab_get_start
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__strtab_get_len
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__emit_asm_string_escaped
.L2894:
    movq -152(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -152(%rbp)
    jmp .L2893
.L2895:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_276(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_runtime_helpers
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_class_helpers
    movq $0, %rax
    movq %rax, -376(%rbp)
.L2896:
    movq -376(%rbp), %rax
    pushq %rax
    movq -368(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2898
    movq -56(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -512(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -432(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 120(%r10)
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_277(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_fn_symbol
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call Codegen__emit_nl
    movq -8(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_fn_symbol
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_45(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_156(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_157(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -512(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2899
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_278(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -512(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_279(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    jmp .L2900
.L2899:
.L2900:
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2901
    call __zn_new_VecInt
    movq -8(%rbp), %r10
    movq %rax, 40(%r10)
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    jmp .L2902
.L2901:
    movq -8(%rbp), %rax
    movq 40(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
.L2902:
    movq -8(%rbp), %rax
    movq 184(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
    movq -8(%rbp), %rax
    movq 192(%rax), %rax
    pushq %rax
    popq %rdi
    call VecInt__clear
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -384(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -392(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $11, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -400(%rbp)
    movq -384(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 128(%r10)
    movq -392(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 136(%r10)
    movq -400(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 144(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 152(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 160(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 168(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $6, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq -8(%rbp), %r10
    movq %rax, 176(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $7, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -408(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -416(%rbp)
    movq -408(%rbp), %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -536(%rbp)
.L2903:
    movq -424(%rbp), %rax
    pushq %rax
    movq -416(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2904
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2905
    jmp .L2904
    jmp .L2906
.L2905:
.L2906:
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_string_kw
    movq %rax, -440(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__tok_is_char_kw
    movq %rax, -448(%rbp)
    movq $1, %rax
    movq %rax, -456(%rbp)
    movq -440(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2907
    movq $2, %rax
    movq %rax, -456(%rbp)
    jmp .L2908
.L2907:
.L2908:
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -256(%rbp)
.L2909:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $42, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2910
    movq -256(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -256(%rbp)
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2909
.L2910:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2911
    leaq str_268(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
    jmp .L2912
.L2911:
.L2912:
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    movq %rax, -464(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    movq %rax, -472(%rbp)
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    movq $0, %rax
    movq %rax, -480(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $91, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2913
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $93, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2915
    movq -424(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2916
.L2915:
.L2916:
    movq $1, %rax
    movq %rax, -480(%rbp)
    jmp .L2914
.L2913:
.L2914:
    movq -384(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -400(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -536(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2917
    movq $1000, %rax
    pushq %rax
    movq -392(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -456(%rbp)
    jmp .L2918
.L2917:
    movq -448(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -480(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2919
    movq $4, %rax
    movq %rax, -456(%rbp)
    jmp .L2920
.L2919:
    movq -448(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -256(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2921
    movq $2, %rax
    movq %rax, -456(%rbp)
    jmp .L2922
.L2921:
.L2922:
.L2920:
.L2918:
    movq -536(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $8, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -488(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -464(%rbp), %rax
    pushq %rax
    movq -472(%rbp), %rax
    pushq %rax
    movq -456(%rbp), %rax
    pushq %rax
    movq -488(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__vars_add
    movq -384(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -400(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -536(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2923
    movq -488(%rbp), %rax
    movq -8(%rbp), %r10
    movq %rax, 152(%r10)
    jmp .L2924
.L2923:
.L2924:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_135(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -536(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2925
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_280(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2926
.L2925:
    movq -536(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2927
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_281(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2928
.L2927:
    movq -536(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2929
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_282(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2930
.L2929:
    movq -536(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2931
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_283(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2932
.L2931:
    movq -536(%rbp), %rax
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2933
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_284(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2934
.L2933:
    movq -536(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2935
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_285(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    jmp .L2936
.L2935:
    leaq str_286(%rip), %rax
    pushq %rax
    popq %rdi
    call cg_error
.L2936:
.L2934:
.L2932:
.L2930:
.L2928:
.L2926:
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_287(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -488(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_233(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -536(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -536(%rbp)
    movq -8(%rbp), %rax
    movq 8(%rax), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq $4, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -424(%rbp), %rax
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__tok_punct1
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2937
    movq -424(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -424(%rbp)
    jmp .L2903
    jmp .L2938
.L2937:
.L2938:
    jmp .L2904
    jmp .L2903
.L2904:
    movq $1, %rax
    movq -8(%rbp), %r10
    movq %rax, 24(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -496(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -376(%rbp), %rax
    pushq %rax
    movq $12, %rax
    popq %r10
    imulq %r10, %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -504(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -496(%rbp), %rax
    pushq %rax
    movq -504(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__parse_stmt_list
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_110(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_288(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_str
    movq -8(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    movq 120(%rax), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_dec
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_45(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_165(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_166(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq -8(%rbp), %rax
    pushq %rax
    leaq str_167(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__emit_line
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 24(%r10)
.L2897:
    movq -376(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -376(%rbp)
    jmp .L2896
.L2898:
    movq -520(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_close
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 56(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 64(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 72(%r10)
    movq $0, %rax
    movq -8(%rbp), %r10
    movq %rax, 80(%r10)
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_1215:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl codegen_basic
codegen_basic:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    call __zn_new_Codegen
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call Codegen__init
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Codegen__compile
    xorq %rax, %rax
.Lret_1435:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl streq
streq:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call __zinc_rt_strcmp
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    jmp .Lret_1436
    xorq %rax, %rax
.Lret_1436:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl rt_strdup
rt_strdup:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_strdup
    jmp .Lret_1437
    xorq %rax, %rax
.Lret_1437:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl str_as_int
str_as_int:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    jmp .Lret_1438
    xorq %rax, %rax
.Lret_1438:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl int_as_str
int_as_str:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    jmp .Lret_1439
    xorq %rax, %rax
.Lret_1439:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl zn_substr_copy
zn_substr_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call substr_copy
    jmp .Lret_1440
    xorq %rax, %rax
.Lret_1440:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl zn_strdup_copy
zn_strdup_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call strdup_copy
    jmp .Lret_1441
    xorq %rax, %rax
.Lret_1441:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl zn_file_read_all
zn_file_read_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_read_all
    jmp .Lret_1442
    xorq %rax, %rax
.Lret_1442:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dbg_free_string
dbg_free_string:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2939
    leaq str_289(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_290(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call str_as_int
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L2940
.L2939:
.L2940:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_1443:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dbg_free_ptr
dbg_free_ptr:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2941
    leaq str_291(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_290(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -24(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L2942
.L2941:
.L2942:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_1446:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dbg
dbg:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2943
    leaq str_292(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L2944
.L2943:
.L2944:
    xorq %rax, %rax
.Lret_1449:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dbg_i
dbg_i:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2945
    leaq str_292(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L2946
.L2945:
.L2946:
    xorq %rax, %rax
.Lret_1452:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl dbg_s
dbg_s:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2947
    leaq str_292(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L2948
.L2947:
.L2948:
    xorq %rax, %rax
.Lret_1455:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl c_strlen
c_strlen:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_strlen
    jmp .Lret_1458
    xorq %rax, %rax
.Lret_1458:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl str_concat2
str_concat2:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -32(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -48(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memset
    movq -48(%rbp), %rax
    jmp .Lret_1459
    xorq %rax, %rax
.Lret_1459:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl str_concat3
str_concat3:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -32(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -40(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -48(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -64(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -64(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -64(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memset
    movq -64(%rbp), %rax
    jmp .Lret_1460
    xorq %rax, %rax
.Lret_1460:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl str_concat4
str_concat4:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -48(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -56(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call c_strlen
    movq %rax, -64(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -80(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memcpy
    movq -80(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call __zinc_rt_memset
    movq -80(%rbp), %rax
    jmp .Lret_1461
    xorq %rax, %rax
.Lret_1461:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl rt_system
rt_system:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call system
    jmp .Lret_1462
    xorq %rax, %rax
.Lret_1462:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl is_space_byte
is_space_byte:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $32, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $13, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    jmp .Lret_1463
    xorq %rax, %rax
.Lret_1463:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl ltrim_idx
ltrim_idx:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -32(%rbp)
.L2949:
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $32, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $9, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $13, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2950
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2949
.L2950:
    movq -32(%rbp), %rax
    jmp .Lret_1464
    xorq %rax, %rax
.Lret_1464:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl starts_with_at
starts_with_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2951
    movq $0, %rax
    jmp .Lret_1467
    jmp .L2952
.L2951:
.L2952:
    movq $0, %rax
    movq %rax, -48(%rbp)
.L2953:
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2955
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2956
    movq $0, %rax
    jmp .Lret_1467
    jmp .L2957
.L2956:
.L2957:
.L2954:
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L2953
.L2955:
    movq $1, %rax
    jmp .Lret_1467
    xorq %rax, %rax
.Lret_1467:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl find_char
find_char:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -40(%rbp)
.L2958:
    movq -40(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2960
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2961
    movq -40(%rbp), %rax
    jmp .Lret_1475
    jmp .L2962
.L2961:
.L2962:
.L2959:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2958
.L2960:
    movq $1, %rax
    negq %rax
    jmp .Lret_1475
    xorq %rax, %rax
.Lret_1475:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl contains_substr
contains_substr:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -24(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2963
    movq $1, %rax
    jmp .Lret_1481
    jmp .L2964
.L2963:
.L2964:
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2965
    movq $0, %rax
    jmp .Lret_1481
    jmp .L2966
.L2965:
.L2966:
    movq $0, %rax
    movq %rax, -40(%rbp)
.L2967:
    movq -40(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2969
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call starts_with_at
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2970
    movq $1, %rax
    jmp .Lret_1481
    jmp .L2971
.L2970:
.L2971:
.L2968:
    movq -40(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    jmp .L2967
.L2969:
    movq $0, %rax
    jmp .Lret_1481
    xorq %rax, %rax
.Lret_1481:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl path_dirname
path_dirname:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -16(%rbp)
    movq $1, %rax
    negq %rax
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L2972:
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2974
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2975
    movq -32(%rbp), %rax
    movq %rax, -24(%rbp)
    jmp .L2976
.L2975:
.L2976:
.L2973:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2972
.L2974:
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2977
    leaq str_293(%rip), %rax
    pushq %rax
    popq %rdi
    call zn_strdup_copy
    jmp .Lret_1491
    jmp .L2978
.L2977:
.L2978:
    movq -24(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2979
    leaq str_294(%rip), %rax
    pushq %rax
    popq %rdi
    call zn_strdup_copy
    jmp .Lret_1491
    jmp .L2980
.L2979:
.L2980:
    movq -8(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    jmp .Lret_1491
    xorq %rax, %rax
.Lret_1491:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl path_stem
path_stem:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -16(%rbp)
    movq $1, %rax
    negq %rax
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L2981:
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2983
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2984
    movq -32(%rbp), %rax
    movq %rax, -24(%rbp)
    jmp .L2985
.L2984:
.L2985:
.L2982:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2981
.L2983:
    movq -24(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -16(%rbp), %rax
    movq %rax, -48(%rbp)
    movq -40(%rbp), %rax
    movq %rax, -32(%rbp)
.L2986:
    movq -32(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2988
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $46, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2989
    movq -32(%rbp), %rax
    movq %rax, -48(%rbp)
    jmp .L2990
.L2989:
.L2990:
.L2987:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2986
.L2988:
    movq -8(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    jmp .Lret_1501
    xorq %rax, %rax
.Lret_1501:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl vec_str_find
vec_str_find:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -24(%rbp)
    movq $0, %rax
    movq %rax, -32(%rbp)
.L2991:
    movq -32(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2993
    movq -8(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call int_as_str
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call __zinc_rt_strcmp
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2994
    movq -32(%rbp), %rax
    jmp .Lret_1512
    jmp .L2995
.L2994:
.L2995:
.L2992:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L2991
.L2993:
    movq $1, %rax
    negq %rax
    jmp .Lret_1512
    xorq %rax, %rax
.Lret_1512:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl resolve_import_path
resolve_import_path:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $47, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2996
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call rt_strdup
    jmp .Lret_1518
    jmp .L2997
.L2996:
.L2997:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call path_dirname
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    leaq str_294(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call str_concat3
    movq %rax, -32(%rbp)
    movq $0, %rax
    pushq %rax
    leaq str_295(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call dbg_free_string
    movq -32(%rbp), %rax
    jmp .Lret_1518
    xorq %rax, %rax
.Lret_1518:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl scan_header_and_strip
scan_header_and_strip:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    leaq str_296(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_get_size
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L2998
    leaq str_297(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L2999
.L2998:
.L2999:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call zn_file_read_all
    movq %rax, -48(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3000
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3002
    leaq str_297(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3003
.L3002:
.L3003:
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rdi
    call zn_strdup_copy
    movq %rax, -48(%rbp)
    jmp .L3001
.L3000:
.L3001:
    leaq str_298(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    movq $24, %rax
    pushq %rax
    popq %rdi
    call __zinc_rt_malloc
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    leaq str_0(%rip), %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
    movq $1, %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
    movq $0, %rax
    movq %rax, -120(%rbp)
.L3004:
    movq -88(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3005
    movq -88(%rbp), %rax
    movq %rax, -128(%rbp)
.L3006:
    movq -88(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3007
    movq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -88(%rbp)
    jmp .L3006
.L3007:
    movq -88(%rbp), %rax
    movq %rax, -136(%rbp)
    movq -88(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3008
    movq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -88(%rbp)
    jmp .L3009
.L3008:
.L3009:
    movq -88(%rbp), %rax
    movq %rax, -144(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call ltrim_idx
    movq %rax, -152(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3010
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    leaq str_299(%rip), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call starts_with_at
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3012
    movq $1, %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -104(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -168(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3014
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3015
.L3014:
.L3015:
    movq -160(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -168(%rbp), %rax
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    jmp .L3004
    jmp .L3013
.L3012:
.L3013:
    movq -104(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3016
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -168(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3018
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3019
.L3018:
.L3019:
    movq -160(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -168(%rbp), %rax
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    jmp .L3004
    jmp .L3017
.L3016:
.L3017:
    movq $1, %rax
    movq %rax, -176(%rbp)
    movq -152(%rbp), %rax
    movq %rax, -184(%rbp)
.L3020:
    movq -184(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3022
    movq -48(%rbp), %rax
    pushq %rax
    movq -184(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    popq %rdi
    call is_space_byte
    testq %rax, %rax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3023
    movq $0, %rax
    movq %rax, -176(%rbp)
    jmp .L3022
    jmp .L3024
.L3023:
.L3024:
.L3021:
    movq -184(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -184(%rbp)
    jmp .L3020
.L3022:
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,1), %rax
    movzbq (%rax), %rax
    pushq %rax
    movq $35, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    movq %rax, -192(%rbp)
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3025
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -168(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3027
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3028
.L3027:
.L3028:
    movq -160(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -168(%rbp), %rax
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    jmp .L3004
    jmp .L3026
.L3025:
.L3026:
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    leaq str_33(%rip), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call starts_with_at
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3029
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call find_char
    movq %rax, -200(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $41, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call find_char
    movq %rax, -208(%rbp)
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    pushq %rax
    movq -208(%rbp), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3031
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3033
    leaq str_300(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3034
.L3033:
.L3034:
    movq $1, %rax
    movq %rax, -120(%rbp)
    jmp .L3004
    jmp .L3032
.L3031:
.L3032:
    jmp .L3030
.L3029:
.L3030:
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    leaq str_31(%rip), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call starts_with_at
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3035
    movq -48(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $40, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call find_char
    movq %rax, -200(%rbp)
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3037
    movq -48(%rbp), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call find_char
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3039
    movq -48(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    movq $34, %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call find_char
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3041
    movq -48(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -224(%rbp), %rax
    pushq %rax
    movq -216(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    movq %rax, -232(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq -232(%rbp), %rax
    pushq %rax
    popq %rdi
    call str_as_int
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq $1, %rax
    movq %rax, -112(%rbp)
    jmp .L3004
    jmp .L3042
.L3041:
.L3042:
    jmp .L3040
.L3039:
.L3040:
    jmp .L3038
.L3037:
.L3038:
    jmp .L3036
.L3035:
.L3036:
    movq $0, %rax
    movq %rax, -96(%rbp)
    jmp .L3011
.L3010:
.L3011:
    movq -48(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -128(%rbp), %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call zn_substr_copy
    movq %rax, -160(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -168(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3043
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3044
.L3043:
.L3044:
    movq -160(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -168(%rbp), %rax
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    jmp .L3004
.L3005:
    movq -72(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3045
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rdi
    call zn_strdup_copy
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
    jmp .L3046
.L3045:
.L3046:
    movq -16(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    popq %r10
    movq %rax, (%r10)
    movq -24(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    popq %r10
    movq %rax, (%r10)
    movq -32(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    movq %rax, (%r10)
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    xorq %rax, %rax
.Lret_1521:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl resolve_unit
resolve_unit:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq %rdx, -24(%rbp)
    movq %rcx, -32(%rbp)
    movq %r8, -40(%rbp)
    movq %r9, -48(%rbp)
    leaq str_301(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    movq -24(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call vec_str_find
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3047
    movq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3049
    leaq str_302(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3050
.L3049:
.L3050:
    movq -64(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3051
    xorq %rax, %rax
    jmp .Lret_1571
    jmp .L3052
.L3051:
.L3052:
    jmp .L3048
.L3047:
    movq -8(%rbp), %rax
    pushq %rax
    popq %rdi
    call rt_strdup
    movq %rax, -72(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rdi
    call str_as_int
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    movq $1, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    subq %rcx, %rax
    movq %rax, -56(%rbp)
.L3048:
    movq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call VecInt__set
    movq $0, %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
    leaq str_0(%rip), %rax
    movq %rax, -96(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    leaq -80(%rbp), %rax
    pushq %rax
    leaq -88(%rbp), %rax
    pushq %rax
    leaq -96(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call scan_header_and_strip
    movq -40(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rdi
    call str_as_int
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call VecInt__set
    leaq str_303(%rip), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    movq -16(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    andb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3053
    leaq str_304(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3054
.L3053:
.L3054:
    movq -88(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
.L3055:
    movq -112(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3057
    movq -88(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    popq %rdi
    call int_as_str
    movq %rax, -120(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call resolve_import_path
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_exists
    pushq %rax
    xorq %rax, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3058
    leaq str_305(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -120(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_306(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_307(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -128(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3059
.L3058:
.L3059:
    movq -128(%rbp), %rax
    pushq %rax
    movq $0, %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call resolve_unit
    movq -128(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
.L3056:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -112(%rbp)
    jmp .L3055
.L3057:
    movq -88(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -88(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -32(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call VecInt__set
    movq -48(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__push
    xorq %rax, %rax
.Lret_1571:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl build_combined_source
build_combined_source:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    leaq str_308(%rip), %rax
    pushq %rax
    movq -8(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    call __zn_new_VecInt
    movq %rax, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -24(%rbp)
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -32(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    call __zn_new_VecInt
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__init
    movq -8(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call resolve_unit
    leaq str_0(%rip), %rax
    movq %rax, -48(%rbp)
    movq $0, %rax
    movq %rax, -56(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
.L3060:
    movq -72(%rbp), %rax
    pushq %rax
    movq -64(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3062
    movq -40(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    movq %rax, -80(%rbp)
    movq -32(%rbp), %rax
    pushq %rax
    movq -80(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    popq %rdi
    call int_as_str
    movq %rax, -88(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq -88(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -96(%rbp)
    movq -56(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3063
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3064
.L3063:
.L3064:
    movq -96(%rbp), %rax
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
.L3061:
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3060
.L3062:
    movq -56(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3065
    leaq str_0(%rip), %rax
    pushq %rax
    popq %rdi
    call zn_strdup_copy
    movq %rax, -48(%rbp)
    movq $1, %rax
    movq %rax, -56(%rbp)
    jmp .L3066
.L3065:
.L3066:
    leaq str_309(%rip), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    leaq str_310(%rip), %rax
    pushq %rax
    movq -48(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
.L3067:
    movq -72(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3069
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    popq %rdi
    call int_as_str
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
.L3068:
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3067
.L3069:
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__count
    movq %rax, -120(%rbp)
    movq $0, %rax
    movq %rax, -72(%rbp)
.L3070:
    movq -72(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3072
    movq -32(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecInt__get
    pushq %rax
    popq %rdi
    call int_as_str
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
.L3071:
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3070
.L3072:
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecInt__destroy
    movq -16(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -40(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -48(%rbp), %rax
    jmp .Lret_1585
    xorq %rax, %rax
.Lret_1585:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3073
    leaq str_311(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3074
.L3073:
.L3074:
    leaq str_0(%rip), %rax
    movq %rax, -24(%rbp)
    leaq str_0(%rip), %rax
    movq %rax, -32(%rbp)
    leaq str_312(%rip), %rax
    movq %rax, -40(%rbp)
    movq $1, %rax
    movq %rax, -48(%rbp)
    movq $0, %rax
    movq %rax, -56(%rbp)
    movq $0, %rax
    movq %rax, -64(%rbp)
    movq $1, %rax
    movq %rax, -72(%rbp)
.L3075:
    movq -72(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3076
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_313(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3077
    movq $1, %rax
    movq %rax, -48(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3078
.L3077:
.L3078:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_314(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3079
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3080
.L3079:
.L3080:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_315(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3081
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3082
.L3081:
.L3082:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_316(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3083
    movq $1, %rax
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3084
.L3083:
.L3084:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_317(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3085
    movq $1, %rax
    movq %rax, -56(%rbp)
    movq $1, %rax
    movq %rax, -80(%rbp)
    leaq str_318(%rip), %rax
    pushq %rax
    popq %rdi
    call dbg
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3086
.L3085:
.L3086:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_319(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3087
    movq $1, %rax
    movq %rax, -80(%rbp)
    leaq str_320(%rip), %rax
    pushq %rax
    popq %rdi
    call dbg
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3088
.L3087:
.L3088:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_321(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3089
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3091
    leaq str_322(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3092
.L3091:
.L3092:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3090
.L3089:
.L3090:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_323(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call streq
    testq %rax, %rax
    jz .L3093
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setge %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3095
    leaq str_324(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3096
.L3095:
.L3096:
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3094
.L3093:
.L3094:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3097
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    movq %rax, -24(%rbp)
    movq -72(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -72(%rbp)
    jmp .L3075
    jmp .L3098
.L3097:
.L3098:
    leaq str_325(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    pushq %rax
    movq -72(%rbp), %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3075
.L3076:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3099
    leaq str_326(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3100
.L3099:
.L3100:
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call file_exists
    pushq %rax
    xorq %rax, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3101
    leaq str_327(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3102
.L3101:
.L3102:
    leaq str_328(%rip), %rax
    pushq %rax
    movq -24(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3103
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call zn_file_read_all
    movq %rax, -88(%rbp)
    call __zn_new_VecToken
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecToken__init
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call lex
    movq %rax, -104(%rbp)
    leaq str_329(%rip), %rax
    pushq %rax
    movq -104(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    movq $0, %rax
    movq %rax, -112(%rbp)
.L3105:
    movq -112(%rbp), %rax
    pushq %rax
    movq -104(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3107
    movq -88(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_kind
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_start
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_len
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_line
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    movq -112(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call VecToken__get_col
    pushq %rax
    popq %r9
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call dump_token
.L3106:
    movq -112(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -112(%rbp)
    jmp .L3105
.L3107:
    movq $0, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3104
.L3103:
.L3104:
    movq -32(%rbp), %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3108
    leaq str_330(%rip), %rax
    movq %rax, -120(%rbp)
    jmp .L3109
.L3108:
.L3109:
    leaq str_331(%rip), %rax
    pushq %rax
    leaq str_332(%rip), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    pushq %rax
    popq %rdi
    call rt_system
    movq -128(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    leaq str_333(%rip), %rax
    pushq %rax
    popq %rdi
    call dbg
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call build_combined_source
    movq %rax, -136(%rbp)
    leaq str_334(%rip), %rax
    pushq %rax
    movq -136(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    call __zn_new_VecToken
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    pushq %rax
    popq %rdi
    call VecToken__init
    movq -136(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call lex
    movq %rax, -152(%rbp)
    leaq str_335(%rip), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    leaq str_336(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    movq -136(%rbp), %rax
    pushq %rax
    movq -144(%rbp), %rax
    pushq %rax
    movq -152(%rbp), %rax
    pushq %rax
    movq -56(%rbp), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    popq %r8
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call codegen_basic
    leaq str_337(%rip), %rax
    pushq %rax
    popq %rdi
    call dbg
    movq -64(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    pushq %rax
    movq -32(%rbp), %rax
    pushq %rax
    popq %rdi
    call len
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    popq %r10
    testq %r10, %r10
    setne %r10b
    testq %rax, %rax
    setne %al
    orb %r10b, %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3110
    leaq str_338(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $0, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3111
.L3110:
.L3111:
    movq -40(%rbp), %rax
    movq %rax, -160(%rbp)
    leaq str_339(%rip), %rax
    pushq %rax
    movq -40(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call str_concat2
    movq %rax, -168(%rbp)
    movq -168(%rbp), %rax
    pushq %rax
    popq %rdi
    call rt_system
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    movq %rax, -176(%rbp)
    movq -168(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3112
    movq -24(%rbp), %rax
    pushq %rax
    popq %rdi
    call path_stem
    movq %rax, -184(%rbp)
    movq -40(%rbp), %rax
    pushq %rax
    leaq str_294(%rip), %rax
    pushq %rax
    movq -184(%rbp), %rax
    pushq %rax
    popq %rdx
    popq %rsi
    popq %rdi
    call str_concat3
    movq %rax, -160(%rbp)
    movq -184(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3113
.L3112:
.L3113:
    leaq str_0(%rip), %rax
    movq %rax, -192(%rbp)
    leaq str_340(%rip), %rax
    pushq %rax
    movq -120(%rbp), %rax
    pushq %rax
    leaq str_341(%rip), %rax
    pushq %rax
    movq -160(%rbp), %rax
    pushq %rax
    popq %rcx
    popq %rdx
    popq %rsi
    popq %rdi
    call str_concat4
    movq %rax, -192(%rbp)
    leaq str_342(%rip), %rax
    pushq %rax
    movq -192(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_s
    movq -192(%rbp), %rax
    pushq %rax
    popq %rdi
    call rt_system
    movq %rax, -200(%rbp)
    movq -192(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    leaq str_343(%rip), %rax
    pushq %rax
    movq -200(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call dbg_i
    movq -176(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3114
    movq -160(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    jmp .L3115
.L3114:
.L3115:
    movq -200(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setne %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L3116
    leaq str_344(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $1, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    jmp .L3117
.L3116:
.L3117:
    leaq str_345(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $0, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
    xorq %rax, %rax
.Lret_1599:
    movq %rbp, %rsp
    popq %rbp
    retq
