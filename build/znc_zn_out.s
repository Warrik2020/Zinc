.section .data
fmt_int: .string "%ld"
fmt_str: .string "%s"
fmt_nl: .string "\n"
str_0: .string "x="
str_1: .string " y="
str_2: .string " z="

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


.globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq $42, %rax
    movq %rax, -8(%rbp)
    movq $7, %rax
    movq %rax, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -24(%rbp)
    leaq str_0(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_1(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_2(%rip), %rax
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
    movq $0, %rax
    jmp .Lret_0
    xorq %rax, %rax
.Lret_0:
    movq %rbp, %rsp
    popq %rbp
    retq
