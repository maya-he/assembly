# program to compute x to the y power 

.data
    x: .word 3
    y: .word 5


.text
main : 
    lw $t0, x
    lw $t1, y

    li $t2, 0       # index
    li $t3, 1       # result

powloop :
    mul $t3, $t3, $t0       # t3 = 1 * x 
    add $t2, $t2, 1         # index += 1
    blt $t2, $t1, powloop   # while index < y : loop again



li $v0, 10
syscall