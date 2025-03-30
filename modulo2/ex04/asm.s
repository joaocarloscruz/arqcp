/***********************asm.s***********************/
.section .data
.global op1
.global op2
.global op3
.global op4
.global res

.section .text
.global yet_another_sum

# void sum(void)
yet_another_sum:
    movl op4(%rip), %eax      # place op1 in ecx
    movl op3(%rip), %ebx      # place op2 in eax
    addl %eax, %ebx
    movl op2(%rip), %ecx
    subl %ecx, %ebx
    movl op2(%rip), %ecx
    subl %ecx, %ebx
    movl op1(%rip), %edx
    addl %edx, %ebx
    movl op4(%rip), %eax
    subl %eax, %ebx
    ret
