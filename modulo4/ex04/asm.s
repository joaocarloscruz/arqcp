.section .text
.global sum_sub
sum_sub:
	# edi -> num1
	# esi -> num2
	# rdx -> subptr

	movl %edi, %eax
	movl %esi, %ebx

	addl %ebx, %eax   # num1 + num2

	movl %edi, %ecx
	subl %ebx	, %ecx # num1 -num2
 	
	movl %ecx, (%rdx)  # place subtraction in subptr
	

	ret


