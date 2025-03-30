.section .text
.global test_even
test_even:
    movl %edi, %eax          # Copy the input number to %eax
    movl $2, %ebx            # Load 2 into %ebx (divisor)

    xorl %edx, %edx          # Clear %edx for division
    idivl %ebx               # Divide %eax by %ebx; remainder in %edx

    cmp $0, %edx             # Compare %edx (remainder) with 0
    je .even                 # Jump to .even if %edx is 0 (even)

    movl $0, %eax            # Set %eax to 0 (odd case)
    ret

.even:
    movl $1, %eax            # Set %eax to 1 (even case)
    ret
