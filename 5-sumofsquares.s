# sum of 1*1 + 2*2 + ... + 10*10 
.data
	sumofsqr: .word 0

.text
main: 
	li $t0 , 1 
	li $t1, 10
	li $t2, 0


sumloop:
	mul $t3, $t0,$t0	# 1*1
	add $t2, $t2, $t3	# 1+..
	add $t0, $t0, 1		# 2
	ble $t0, $t1, sumloop

	sw $t2, sumofsqr


li $v0,10
syscall