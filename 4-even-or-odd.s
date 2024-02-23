# Check if the number is even or odd.
.data
	even_num: .asciiz "this num is even"
	odd_num : .asciiz "this num is odd"


.text
main:
	li $v0, 5			# takes integer input 
	syscall

	move $t0, $v0 		# the num user entered moved to $t0
	li $t1, 2
	rem $t2, $t0,$t1	# t2 = user num % 2
	beq $t2,0, even		# if t2 = 0 go to even 

	la $a0, odd_num
	j end


even:
	la $a0, even_num
	j end

end:
	li $v0,4		# print string in the console
	syscall
	
li $v0,10
syscall