.section .text
.global vec_search
vec_search:
	# rdi -> array
	# esi -> length
	# edx -> x
	pushq (%rdi)
	movl $0, %ecx
	jmp .loop

.loop:
	cmpl %esi, %ecx  # i - length
	jge .not_found
	
	movl (%rdi), %eax
	cmpl %eax, %edx
	je .found
	

	incl %ecx
	addq $4, %rdi
	jmp .loop
	

.not_found:
	movl $0, %eax
	ret

.found:
	popq (%rdi)
	movslq %ecx, %rcx
	leaq (%rdi, %rcx), %rax

	ret 
