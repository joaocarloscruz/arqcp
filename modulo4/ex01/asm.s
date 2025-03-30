.section .text
.global d_square
d_square:
    # Input in %edi (x)

    movl %edi, %eax       # Move x into %eax (implicit operand for mul)
    mull %eax             # Multiply %eax by itself (result in EDX:EAX)

    movl $2, %ecx         # Move 2 into %ecx
    mull %ecx             # Multiply %eax by 2 (result in EDX:EAX)

    # Return the lower 32 bits (in %eax)
    ret
