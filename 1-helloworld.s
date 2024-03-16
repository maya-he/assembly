# writing a message
.data
	word: .asciiz "hello world"


.text
main :
	la $a0, word
	li $v0,4
	syscall

li $v0,10
syscall
