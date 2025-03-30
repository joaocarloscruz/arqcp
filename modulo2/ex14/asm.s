.section .data
.global length1
.global length2
.global height
.global result

length1:
    .long 10
length2:
    .long 8
height:
    .long 3
result:
    .long 0 

.section .text
.global getArea
getArea:
    movl length1(%rip), %eax
    movl length2(%rip), %ebx
    addl %ebx, %eax
    movl height(%rip), %ebx
    imull %ebx, %eax
    sarl $1, %eax           # Divide by 2 using arithmetic shift
    movl %eax, result(%rip)
    ret
