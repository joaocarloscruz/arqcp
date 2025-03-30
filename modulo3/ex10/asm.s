.section .text
.global str_cat
str_cat:
	# rdi str1
	# rsi str2
	# rdx str3

	pushq (%rdi)
	pushq (%rsi)
	pushq (%rdx)
	jmp .copy_first

	jmp .copy_second
.copy_first:
	movb (%rdi), %al
	cmp $0, %al
	je .copy_second

	movb %al, (%rdx)
	incq %rdi
	incq %rdx
	jmp .copy_first

.copy_second:
	movb (%rsi), %cl
	cmp $0, %cl
	je .end

	movb %cl, (%rdx)
	incq %rsi
	incq %rdx
	jmp .copy_second
	
	
.end:
	popq (%rdx)
	popq (%rsi)
	popq (%rdi)
	ret
