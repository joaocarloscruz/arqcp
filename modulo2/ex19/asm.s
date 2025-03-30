.section .data

.section .text
.global needed_time
needed_time:
    movb current(%rip), %al       # Load current temperature into %al (8-bit)
    movb desired(%rip), %bl       # Load desired temperature into %bl (8-bit)
    cmp %bl, %al                  # Compare desired - current
    js .decrease                  # Jump if current > desired (decreasing temperature)
    jg .increase                  # Jump if desired > current (increasing temperature)

    # If current == desired, no time is needed
    xor %ax, %ax                  # Clear %ax (result = 0)
    ret

.decrease:
    # Decreasing: Four minutes (240 seconds) to decrease one degree Celsius
    subb %bl, %al                 # current - desired (positive result, current > desired)
    movzbw %al, %ax               # Zero-extend %al (8-bit) to %ax (16-bit)
    imul $240, %ax                # Multiply by 240 (seconds per degree decrease)
    ret

.increase:
    # Increasing: Three minutes (180 seconds) to increase one degree Celsius
    subb %al, %bl                 # desired - current (positive result, desired > current)
    movzbw %bl, %ax               # Zero-extend %bl (8-bit) to %ax (16-bit)
    imul $180, %ax                # Multiply by 180 (seconds per degree increase)
    ret
