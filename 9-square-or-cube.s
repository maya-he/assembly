# program that prompts the user to input a number and then calculates
# either its square or cube, depending on the user's choice

.data
	p1: .asciiz "enter a number "
	p2: .asciiz "enter 1 for square, 2 for cube "


.text
main :
	la $a0, p1			# print p1 to the console
	li $v0,4
	syscall

	li $v0,5			# takes int input
	syscall

	move $t0, $v0		# t0 = user's number

	la $a0, p2			# print p2 to the console
	li $v0,4
	syscall

	li $v0,5
	syscall
	move $t1, $v0		# t1= 1 or 2

	beq $t1,1,square
	beq $t1,2, cube

square :
	mul $t3, $t0,$t0
	j end

cube :
	mul $t4, $t0,$t0
	mul $t4, $t4, $t0
	
end :
	li $v0, 10
	syscall