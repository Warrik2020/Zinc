.section .data
fmt_int: .string "%ld"
fmt_str: .string "%s"
fmt_nl: .string "\n"
str_0: .string "Stored value is "
str_1: .string "ping"
str_2: .string "pong"
str_3: .string "Unknown argument: "
str_4: .string "Welcome to Zinc!"
str_5: .string "Sum is positive"
str_6: .string "Sum = "
str_7: .string "test"
str_8: .string "Math.add(2, 3) = "
str_9: .string "Counter.val = "
str_10: .string "Counter.val from v instance (should be 0) = "
str_11: .string "correct"
str_12: .string "Fibonacci of 50 is "
str_13: .string "Stored value in math instance is "
str_14: .string "Stored value in math2 instance (should be 0) is "
str_15: .string "Done!"

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


.globl __zn_new_Math
.globl __zn_copy_Math
__zn_new_Math:
    pushq %rbp
    movq %rsp, %rbp
    movl $8, %edi
    call malloc@PLT
    movq %rax, %rdi
    xorl %esi, %esi
    movl $8, %edx
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq
__zn_copy_Math:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movq %rdi, %rbx
    movl $8, %edi
    call malloc@PLT
    movq %rax, %rdi
    movq %rbx, %rsi
    movl $8, %edx
    call memcpy@PLT
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq

.globl __zn_new_Counter
.globl __zn_copy_Counter
__zn_new_Counter:
    pushq %rbp
    movq %rsp, %rbp
    movl $8, %edi
    call malloc@PLT
    movq %rax, %rdi
    xorl %esi, %esi
    movl $8, %edx
    call memset@PLT
    movq %rbp, %rsp
    popq %rbp
    retq
__zn_copy_Counter:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    movq %rdi, %rbx
    movl $8, %edi
    call malloc@PLT
    movq %rax, %rdi
    movq %rbx, %rsi
    movl $8, %edx
    call memcpy@PLT
    popq %rbx
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Math__add
Math__add:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    popq %r10
    addq %r10, %rax
    jmp .Lret_0
    xorq %rax, %rax
.Lret_0:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Math__fib
Math__fib:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L23
    movq -8(%rbp), %rax
    jmp .Lret_1
    jmp .L24
.L23:
.L24:
    movq $0, %rax
    movq %rax, -16(%rbp)
    movq $1, %rax
    movq %rax, -24(%rbp)
    movq $2, %rax
    movq %rax, -32(%rbp)
.L25:
    movq -32(%rbp), %rax
    pushq %rax
    movq -8(%rbp), %rax
    popq %r10
    cmpq %rax, %r10
    setle %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L27
    movq -16(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -24(%rbp), %rax
    movq %rax, -16(%rbp)
    movq -40(%rbp), %rax
    movq %rax, -24(%rbp)
.L26:
    movq -32(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -32(%rbp)
    jmp .L25
.L27:
    movq -24(%rbp), %rax
    jmp .Lret_1
    xorq %rax, %rax
.Lret_1:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Math__foo
Math__foo:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -16(%rbp), %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Math__add
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    leaq str_0(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    xorq %rax, %rax
.Lret_7:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl Counter__inc
Counter__inc:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rdi, -8(%rbp)
    movq -8(%rbp), %rax
    movq 0(%rax), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq -8(%rbp), %r10
    movq %rax, 0(%r10)
    xorq %rax, %rax
.Lret_8:
    movq %rbp, %rsp
    popq %rbp
    retq

.globl main
main:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rsi, -16(%rbp)
    movq -8(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L28
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    movq %rax, %rcx
    popq %rax
    leaq (%rax,%rcx,8), %rax
    movq (%rax), %rax
    pushq %rax
    leaq str_1(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L30
    leaq str_2(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L31
.L30:
    leaq str_3(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
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
.L31:
    jmp .L29
.L28:
.L29:
    leaq str_4(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $10, %rax
    movq %rax, -24(%rbp)
    movq $20, %rax
    movq %rax, -32(%rbp)
    movq $0, %rax
    movq %rax, -40(%rbp)
    movq $0, %rax
    movq %rax, -48(%rbp)
.L32:
    movq -48(%rbp), %rax
    pushq %rax
    movq $3, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L33
    movq -40(%rbp), %rax
    pushq %rax
    movq -24(%rbp), %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -40(%rbp)
    movq -48(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -48(%rbp)
    jmp .L32
.L33:
    movq -40(%rbp), %rax
    pushq %rax
    movq $0, %rax
    popq %r10
    cmpq %rax, %r10
    setg %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L34
    leaq str_5(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L35
.L34:
.L35:
    leaq str_6(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_7(%rip), %rax
    movq %rax, -40(%rbp)
    movq -40(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_8(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $2, %rax
    pushq %rax
    movq $3, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Math__add
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    call __zn_new_Counter
    movq %rax, -56(%rbp)
    call __zn_new_Counter
    movq %rax, -64(%rbp)
    movq $0, %rax
    movq -56(%rbp), %r10
    movq %rax, 0(%r10)
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call Counter__inc
    leaq str_9(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -56(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_10(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -64(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -56(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -64(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq $100, %rax
    pushq %rax
    movq $2, %rax
    popq %r10
    movq %rax, %rcx
    movq %r10, %rax
    cqo
    idivq %rcx
    pushq %rax
    movq $3, %rax
    popq %r10
    imulq %r10, %rax
    movq %rax, -72(%rbp)
    movq -72(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    call txtin
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, -88(%rbp)
.L36:
    movq -88(%rbp), %rax
    pushq %rax
    movq $5, %rax
    popq %r10
    cmpq %rax, %r10
    setl %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L38
    movq -80(%rbp), %rax
    pushq %rax
    leaq str_7(%rip), %rax
    movq %rax, %rsi
    popq %rdi
    call __zinc_rt_strcmp
    cmpl $0, %eax
    sete %al
    movzbl %al, %eax
    testq %rax, %rax
    jz .L39
    leaq str_11(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    jmp .L40
.L39:
    movq $0, %rax
    movq %rax, %rdi
    call __zinc_rt_exit
.L40:
.L37:
    movq -88(%rbp), %rax
    pushq %rax
    movq $1, %rax
    popq %r10
    addq %r10, %rax
    movq %rax, -88(%rbp)
    jmp .L36
.L38:
    movq $1, %rax
    movq %rax, -80(%rbp)
    movq $2, %rax
    movq %rax, -96(%rbp)
    movq -80(%rbp), %rax
    pushq %rax
    movq -96(%rbp), %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Math__add
    movq %rax, -56(%rbp)
    movq -56(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq $50, %rax
    pushq %rax
    popq %rdi
    call Math__fib
    movq %rax, -80(%rbp)
    leaq str_12(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -80(%rbp), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    call __zn_new_Math
    movq %rax, -104(%rbp)
    call __zn_new_Math
    movq %rax, -112(%rbp)
    movq -104(%rbp), %rax
    movq $40, %rax
    pushq %rax
    movq $2, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Math__add
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -104(%rbp), %rax
    movq $10, %rax
    pushq %rax
    popq %rdi
    call Math__fib
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -104(%rbp), %rax
    pushq %rax
    movq $21, %rax
    pushq %rax
    popq %rsi
    popq %rdi
    call Math__foo
    leaq str_13(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -104(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq str_14(%rip), %rax
    movq %rax, %rsi
    leaq fmt_str(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -112(%rbp), %rax
    movq 0(%rax), %rax
    movq %rax, %rsi
    leaq fmt_int(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    leaq fmt_nl(%rip), %rdi
    xorl %eax, %eax
    call __zinc_rt_printf
    movq -104(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    movq -112(%rbp), %rax
    pushq %rax
    popq %rdi
    call free
    leaq str_15(%rip), %rax
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
.Lret_9:
    movq %rbp, %rsp
    popq %rbp
    retq
