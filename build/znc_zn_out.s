.section .data
fmt_int: .string "%d"
fmt_str: .string "%s"
fmt_nl: .string "\n"
str_0: .string "Hello, Zinc!"

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
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl $0
    call fflush@PLT
    addl $16, %esp
    subl $12, %esp
    pushl 8(%ebp)
    call _exit@PLT
    addl $16, %esp

__zinc_rt_free:
    jmp free@PLT

__zinc_rt_malloc:
    jmp malloc@PLT

__zinc_rt_memset:
    jmp memset@PLT

__zinc_rt_memcpy:
    jmp memcpy@PLT

__zinc_rt_strcmp:
    jmp strcmp@PLT

__zinc_rt_strdup:
    jmp strdup@PLT

__zinc_rt_printf:
    jmp printf@PLT

__zinc_rt_fgets:
    jmp fgets@PLT

__zinc_rt_strlen:
    jmp strlen@PLT

txtin:
    pushl %ebp
    movl %esp, %ebp
    subl $12, %esp
    pushl $1
    call malloc@PLT
    addl $16, %esp
    testl %eax, %eax
    je .Ltxtin32_ret0
    movb $0, (%eax)
    jmp .Ltxtin32_done
.Ltxtin32_ret0:
    xorl %eax, %eax
.Ltxtin32_done:
    movl %ebp, %esp
    popl %ebp
    ret


.globl add
add:
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    subl $20, %esp
    movl 8(%ebp), %eax
    movl %eax, -4(%ebp)
    movl 12(%ebp), %eax
    movl %eax, -8(%ebp)
    movl -4(%ebp), %eax
    pushl %eax
    movl -8(%ebp), %eax
    popl %ebx
    addl %ebx, %eax
    jmp .Lret_0
    xorl %eax, %eax
.Lret_0:
    addl $20, %esp
    popl %ebx
    movl %ebp, %esp
    popl %ebp
    ret

.globl main
main:
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    subl $4, %esp
    movl $str_0, %eax
    subl $8, %esp
    pushl %eax
    pushl $fmt_str
    call __zinc_rt_printf
    addl $16, %esp
    subl $12, %esp
    pushl $fmt_nl
    call __zinc_rt_printf
    addl $16, %esp
    movl $5, %eax
    pushl %eax
    movl $3, %eax
    pushl %eax
    subl $8, %esp
    call add
    addl $16, %esp
    movl %eax, -4(%ebp)
    movl -4(%ebp), %eax
    subl $8, %esp
    pushl %eax
    pushl $fmt_int
    call __zinc_rt_printf
    addl $16, %esp
    subl $12, %esp
    pushl $fmt_nl
    call __zinc_rt_printf
    addl $16, %esp
    movl $0, %eax
    subl $12, %esp
    pushl %eax
    call __zinc_rt_exit
    addl $16, %esp
    xorl %eax, %eax
.Lret_1:
    addl $4, %esp
    popl %ebx
    movl %ebp, %esp
    popl %ebp
    ret
