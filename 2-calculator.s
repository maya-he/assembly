# simple calculator
.data
    num1: .word 60
    num2: .word 40
    
    ans1: .word 0 
    ans2: .word 0 
    ans3: .word 0


.text
main:
    lw $t0, num1
    lw $t1, num2

    # addition 
    add $t2, $t0, $t1 
    sw $t2, ans1 

    # multiplication
    mul $t3, $t0, $t1
    sw $t3, ans2 

    # remainder
    rem $t4, $t0, $t1
    sw $t4, ans3 



li $v0, 10
syscall