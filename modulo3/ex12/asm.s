.section .text
.global vec_zero
vec_zero:
    # rdi -> array
    # esi -> length

    movl $0, %ecx              # Initialize counter to 0
    movb $0, %al               # Initialize characters changed to 0

.loop:
    movl (%rdi), %r8d          # Load array element
    cmp %esi, %ecx             # Compare length with counter
    jge .end                   # If counter >= length, jump to end

    cmp $50, %r8d              # Compare array element with 50
    jge .zero                  # If >= 50, jump to zero block

    addl $1, %ecx              # Increment counter
    addq $4, %rdi              # Increment pointer by 4 bytes (for 4-byte int)
    jmp .loop                  # Repeat loop

.zero:
	movl $0, (%rdi)
    addl $1, %ecx              # Increment counter
    addb $1, %al               # Increment characters changed counter
    addq $4, %rdi              # Increment pointer by 4 bytes (for 4-byte int)
    jmp .loop                  # Repeat loop

.end:
    xor %rdx, %rdx             # Clear upper 56 bits of rax
    ret                        # Return with value in al (lower 8 bits of rax)
