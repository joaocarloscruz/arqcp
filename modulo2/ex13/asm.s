.section .data
.global length1
.global length2
.global height
.global result

.section .text
.global getArea
getArea:
    movswl length1(%rip), %eax
    movswl length2(%rip), %ebx
    addl %ebx, %eax
    movswl height(%rip), %ebx
    imull %ebx, %eax
    sarl $1, %eax           # Divide by 2 using arithmetic shift
    movl %eax, result(%rip)
    ret
