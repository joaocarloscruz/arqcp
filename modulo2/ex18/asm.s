.section .data
.global A
A:
	.long 3
.global B
B:
	.long 4
.global result
result:
	.long 0
.global i
i:
	.long 1

.section .text
.global sigma
sigma:
	movl n(%rip), %r8d

.loop:
	movl i(%rip), %ecx
	movl %r8d, %eax
	cmpl %eax, %ecx
	jg .end

	movl %ecx, %ebx
	imull %ebx, %ebx # ebx = i * i

	movl A(%rip), %edx  # Place A into edx

	imull A(%rip), %edx  # edx = A * A
	imull A(%rip), %edx  # edx = edx * A

	imull %edx, %ebx
	movl %ebx, %eax     # Place i² * A³ into eax
 
	movl B(%rip), %ecx
	xorl %edx, %edx
	idivl %ecx          # Result of all calculations

	addl %eax, result(%rip)

	addl $1,  i(%rip)
	jmp .loop

.end:
	
	ret
