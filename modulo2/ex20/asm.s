.section .data

.section .text
    .global check_num
check_num:
    movw num(%rip), %ax        # Load the value of num into the AX register
    cmp $0, %ax                # num - 0
    jl .negative               # If cmp less than 0, jump to .negative
    jg .positive               # If cmp greater than 0, jump to .positive

    mov $0, %al
    ret

.positive:
    test $1, %ax               # Test if AX is even or odd
    jz .positive_even          # If zero (even), jump to .positive_even
    mov $4, %al                # Else, it's odd and positive -> Return 4
    ret

.positive_even:
    mov $3, %al                # Positive and even -> Return 3
    ret

.negative:
    test $1, %ax               # Test if AX is even or odd
    jz .negative_even          # If zero (even), jump to .negative_even
    mov $2, %al                # Else, it's odd and negative -> Return 2
    ret

.negative_even:
    mov $1, %al                # Negative and even -> Return 1
    ret
