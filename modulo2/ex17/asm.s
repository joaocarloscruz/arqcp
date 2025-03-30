.section .data
.global result
result:
	.long 0
.section .text
.global sum
sum:
	movl num1(%rip), %eax
	movl num2(%rip), %ebx
	addl %ebx, %eax
        movl %eax, result(%rip)
	ret

.global subtraction
subtraction:
	movl num1(%rip), %eax
	movl num2(%rip), %ebx
	subl %ebx, %eax
	movl %eax, result(%rip)
	ret

.global multiplication
multiplication:
	movl num1(%rip), %eax
	movl num2(%rip), %ecx
	mull %ecx
	movl %eax, result(%rip)
	ret

.global division
division:
	movl num1(%rip), %eax
	movl num2(%rip), %ecx
	xorl %edx, %edx
	divl %ecx
	movl %eax, result(%rip)
	ret

.global modulus
modulus:
	movl num1(%rip), %eax
	movl num2(%rip), %ecx
	xorl %edx, %edx
	divl %ecx
	movl %edx, result(%rip)
	ret

.global powerTwo
powerTwo:
	movl num1(%rip), %eax
	movl num1(%rip), %ecx
	mull %ecx
	movl %eax, result(%rip)
	ret

.global powerThree
powerThree:
	movl num1(%rip), %eax
	movl num1(%rip), %ecx
	mull %ecx
	mull %ecx
	movl %eax, result(%rip)
	ret
