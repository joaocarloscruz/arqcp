.section .data
.global op1      # 16-bit variable
.global op2      # 16-bit variable

.section .text
.global verify_flags
verify_flags:
    movw op1(%rip), %cx      # Load op1 into %cx
    movw op2(%rip), %dx      # Load op2 into %dx
    addw %cx, %dx            # Sum op1 and op2, result in %dx
    movw %dx, %ax            # Move result to %ax

    setc %bl                 # Set BL to 1 if CF is set, else 0
    seto %bh                 # Set BH to 1 if OF is set, else 0
    orb %bh, %bl             # OR BL and BH
    movb %bl, %al            # Move the result to AL
    ret                      # Return