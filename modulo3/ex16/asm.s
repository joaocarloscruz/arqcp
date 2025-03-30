.section .text
.global swap
#rdi -> pointer char1
# rsi -> pointer char2
# edx -> size
swap:
	
	movl $0, %ecx  # index
.loop:
	cmp %edx, %ecx # i - size
	jge .end

	movb (%rdi), %al    # byte from char1
	movb (%rsi), %bl	# byte from char2

	movb %al, (%rsi)	# byte from char1 into char2
	movb %bl, (%rdi)	# byte from char2 into char1


	addq $1, %rdi
	addq $1, %rsi
	addl $1, %ecx
	jmp .loop

.end:
	ret
