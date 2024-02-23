# finds the median for a sorted array of values
.data
	array: .word 1, 3, 5, 7, 9, 11

.text
main :

	la $t0, array
	li $t1, 6			# length

	div $t2, $t1, 2		# 6/2=3
	mul $t3, $t2, 4		# 3*4 = 12 steps from the first element

	add $t4, $t0, $t3	# t4 = address of 7
	lw $t5, ($t4)		# value of 7

	sub $t4, $t4, 4		# go back 4 to get the address of 5
	lw $t6, ($t4)		# value of 5

	add $t7, $t5, $t6	# t7 = 5+7 = 12
	div $t8, $t7, 2		# t8 = 12/2 = 6
	
	

li $v0,10
syscall