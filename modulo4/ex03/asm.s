.section .text
.global greatest
greatest:
	# %di -> n1
	# %si -> n2
	# %dx -> n3

	cmpw %di, %si
	jg .two_bigger_one

	# n1 > n2

	cmpw %di, %dx
	jg .ret_three 	 #n3 is greatest

	# n1 > n3

	movw %di, %ax
	ret


.two_bigger_one:
	cmpw %si, %dx
	jg .ret_three

	# n2 > n3

	movw %si, %ax
	ret

.ret_three:
	movw %dx, %ax
	ret
