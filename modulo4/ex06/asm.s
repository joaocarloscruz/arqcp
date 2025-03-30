.section .text
.global test_different
test_different:
	# rdi -> char a pointer
	# rsi -> char b pointer

	movb (%rdi), %bl
	movb (%rsi), %cl

	cmpb %bl, %cl
	jne .not_equal

	movl $0, %eax
	ret

.not_equal:
	movl $1, %eax
	ret
