.section .text
.global array_sort
array_sort:
    movl $0, %r8d          # (i = 0)
.outer_loop:
    cmp %esi, %r8d         # i - length
    jge .end               
    
    movl $0, %ecx          # (j = 0)
.inner_loop:
    movl %esi, %r9d        # Copy length to r9d
    subl $1, %r9d          # length - 1
    cmp %r9d, %ecx         # j - length-1
    jge .inner_loop_end    
    
    movq %rdi, %rdx        # Copy %rdi address
    movslq %ecx, %r10      	 # Convert to 64 - bits
    leaq (%rdx,%r10,4), %rdx # Get address of array[j]
    
    movl (%rdx), %eax      # Load array[j]
    movl 4(%rdx), %r11d    # Load array[j+1]
    cmpl %r11d, %eax       # array[j] - array[j+1]
    jge .no_swap           # If array[j] >= array[j+1], no swap
                          
    # Swap elements
    movl %r11d, (%rdx)     
    movl %eax, 4(%rdx)

	jmp .inner_loop
    
.no_swap:
    addl $1, %ecx          # Increment j
    jmp .inner_loop
    
.inner_loop_end:
    addl $1, %r8d          # Increment i
    jmp .outer_loop
    
.end:
    ret
