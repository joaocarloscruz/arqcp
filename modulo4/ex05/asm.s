.section .text
.global inc_and_cube
inc_and_cube:
	# rdi -> v1 pointer
	# esi -> v2 value
	movw (%rdi), %cx
	addw $1, %cx
	movw %cx, (%rdi)

	movl %esi, %eax
	imull %eax
	movl %esi, %ecx
	imull %ecx

	ret
