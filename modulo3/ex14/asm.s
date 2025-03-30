.section .text
.global vec_diff
vec_diff:
    # rdi -> array 
    # esi -> num
    movl $0, %ebx # unique count
    movl $0, %ecx # i
	movl (%rdi), %r8d
	movl %esi, %r9d
.loop_vec:
    cmp %esi, %ecx
    jge .end_loop_vec
    movl (%rdi), %edx

	call exists
	
	movl %r8d, (%rdi)
	movl %r9d, %esi
	
	addl $1, %ecx    # Increment index
    addq $4, %rdi    # Increment pointer
    
	cmpl $0, %eax    # If value has no duplicates, continue
    jne .skip
    
	addl $1, %ebx    # Increment unique count
    jmp .loop_vec

.skip:
    jmp .loop_vec
.end_loop_vec:
    movl %ebx, %eax
    ret

.global exists
exists:
    # rdi -> array
    # esi -> length
    # edx -> value

    movl $0, %ecx # i 
    movl $0, %r8d # duplicate counter
.loop: 
    cmp %esi, %ecx
    jge .end
    movl (%rdi), %r9d
    addq $4, %rdi
    addl $1, %ecx
    cmp %edx, %r9d
    jne .not_equal
   addl $1, %r8d
    jmp .loop
.not_equal:
    jmp .loop
.end:
    movl %r8d, %eax
    ret
