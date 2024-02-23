# computes the sum and average for an array integer values

.data
    arr: .word 1, 3, 5, 7, 9, 11
    length: .word 6

.text
main :
    la $t0, arr     # address of the first arr element (1)
    li $t1, 0       # index 
    lw $t2, length 
    li $t3, 0       # intialize sum

sumloop :
    lw $t4, ($t0)       # () to get the value at the address
    add $t3, $t3, $t4   # sum = sum + .. 
    add $t1, $t1, 1     # index += 1
    add $t0, $t0, 4     # go to the second arr element
    blt $t1, $t2, sumloop 

average :
    div $t5, $t3, $t2        # sum / length


li $v0, 10
syscall
