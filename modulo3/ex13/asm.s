.section .text
.global keep_positives
keep_positives:
    # rdi -> pointer to array
    # esi -> length of array

    movl $0, %ecx              # Initialize index counter to 0

.loop:
    cmpl %esi, %ecx
    jge .end                   # If index >= length, exit the loop

    movl (%rdi), %eax
    
	cmpl $0, %eax
    jge .skip                  # If >= 0, skip to the next element
	
	
    addl $1, %ecx
	movl %ecx, (%rdi)
	addq $4, %rdi
	jmp .loop
.skip:
	addq $4, %rdi
    addl $1, %ecx              # Increment index counter
    jmp .loop

.end:
    ret
