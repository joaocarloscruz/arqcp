.section  .data
.global A
.global B

.section .text
.global isMultiple
isMultiple:
	movl A(%rip), %eax
	movl B(%rip), %ebx
	divl %ebx
	cmpl $0, %ecx
	sete %al
	ret
