.section .data
.global A
.global B
.global C
.global D
.global result

.section .text
.global compute
compute:
	movl A(%rip), %ebx
	movl B(%rip), %eax
	mull %ebx            #result in eax
	movl %eax, %edi      # place A * B in edi
	movl C(%rip), %eax
	mull %ebx
	movl %eax, %esi      # place C * A in esi 
	subl %esi, %edi      # subtract
	movl %edi, %eax
	movl D(%rip), %ecx
	divl %ecx
	ret
