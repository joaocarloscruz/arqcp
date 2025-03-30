.section .data
.global num

.section .text
.global steps
steps:
	movq num(%rip), %rax
	movq $3, %rcx
	xorq %rdx, %rdx
	divq %rcx
	addq $6, %rax
	movq $3, %rcx
	mulq %rcx

	addq $12, %rax
	movq num(%rip), %rbx
	subq %rbx,%rax 
	subq $4, %rax
	ret
