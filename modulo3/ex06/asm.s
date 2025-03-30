.section .text
.global encrypt
encrypt:
    # rdi -> char pointer
    movl $0, %r8d
    jmp .loop

.loop:
    movb (%rdi), %cl
    cmp $0, %cl
    je .end


	cmp $'A', %cl
	je .no_encryption

    cmp $'a', %cl
    je .no_encryption

    cmp $' ', %cl
    je .no_encryption

    addb $1, %cl
    movb %cl, (%rdi)
    incq %rdi
    addl $1, %r8d
    jmp .loop

.no_encryption:
    incq %rdi
    jmp .loop

.end:
    movl %r8d, %eax
    ret
