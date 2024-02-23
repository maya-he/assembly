# adds the elements on the diagonal of a two dimensional array (row major).

.data
	arr: .word 11, 12, 13
		 .word 16, 17, 18
		 .word 21, 22, 23

	numofcols:	.word 3
	datasize:	.word 4

.text
main :
	la $a0, arr		# base address
	lw $t0, numofcols
	lw $t1, datasize

DiagonalSum :
	li $t2, 0	# intialize sum
	li $t3, 0	# index

	sumloop :
		mul $t4, $t3, $t0	# row index * no of cols
		add $t4, $t4, $t3	#			    + col index
		mul $t4, $t4, $t1	#			     	* datasize
		add $t4, $t4, $a0	# address of arr[0][0]
		lw $t5, ($t4)		# 11
		add $t2, $t2, $t5	# sum = 11 + ... 
		addi $t3, $t3, 1	# index +=1 
		ble $t3, $t0, sumloop 

# terminate
li $v0, 10
syscall
		
		



