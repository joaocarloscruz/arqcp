.section .text
.global sum2_n
sum2_n:
	#edi -> n
	
	cmp $0, %edi
	jle .finish

	movl $1, %esi  # count variable
	
	movl $0, %r8d  # result
	jmp .loop
	
	ret

.loop:
	cmp %esi, %edi
	je .end_loop
	
	addl %edi, %r8d
	addl $1, %esi
	

	jmp .loop

.end_loop:
	movl %r8d, %eax
	
	mull %eax   # result^2
	ret
.finish:
	movl $0, %eax
	ret

