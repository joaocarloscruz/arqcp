.section .data
h: .long 0 
g: .long 0
r: .long 0
.section .text
.global f
f:
	movl i(%rip), %eax
	movl j(%rip), %ebx
	cmp %eax, %ebx
	je .f_equal


	addl %ebx, %eax  # i + j in %eax
	subl $1, %eax    # %eax - 1 in %eax
	ret

.f_equal:
	subl %ebx, %eax  # i - j in %eax
	addl $1, %eax
	ret

.global f3
f3:
    movl i(%rip), %eax        # place i into %eax
    movl j(%rip), %ebx        # place j into %ebx

    cmp %eax, %ebx            # j - i
    jge .f3_greater_equal     # jump to .f3_greater_equal if i >= j

    addl %ebx, %eax           # h = i + j
    movl %eax, h(%rip)        # store h
    movl $2, %eax             # g = 2
    movl %eax, g(%rip)        # store g
    jmp .f3_end_if

.f3_greater_equal:
    imull %ebx, %eax          # h = i * j
    movl %eax, h(%rip)        # store h
    movl i(%rip), %eax        # place i into %eax
    addl $1, %eax             # g = i + 1
    movl %eax, g(%rip)        # store g

.f3_end_if:
    movl h(%rip), %ebx        # place h into %ebx 
    movl g(%rip), %eax        # place g into %eax 
    cltd                      # Sign extend %eax into %edx:%eax 
    idivl %ebx
    movl %eax, r(%rip)        # Store the quotient in r
    ret
