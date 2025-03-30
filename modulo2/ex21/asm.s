.section .data

.section .text
.global new_salary
new_salary:
	movw code(%rip), %ax
	movw currentSalary(%rip), %bx

	cmp $10, %ax
	je .10
	cmp $11, %ax
	je .11
	cmp $12, %ax
	je .12

	addw $200, %bx
	movw %bx, %ax
	ret
	

.10:
	addw $500, %bx
	movw %bx, %ax
	ret

.11:
	addw $400, %bx
	movw %bx, %ax
	ret
.12:
	addw $300, %bx
	movw %bx, %ax
	ret
