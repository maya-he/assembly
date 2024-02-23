# compute the volume and surface area of a rectangular parallelepiped.
.data
    aside: .word 73
    bside: .word 14
    cside: .word 16

    vol: .word 0
    area: .word 0


.text
main:

    lw $t0, aside
    lw $t1, bside
    lw $t2, cside

    # volume = a * b * c

    mul $t3, $t0, $t1   # a*b
    mul $t4, $t3, $t2   # a*b*c 

    sw $t4, vol

    # surface Area = 2* (a*b + a* c + b*c)

    mul $t5, $t0, $t2       # a * c
    mul $t6, $t1, $t2       # b * c
    add $t7, $t3, $t5       #(a*b) + (a*c)
    add $t7, $t7, $t6       #(a*b) + (a*c) + (b*c)
    mul $t7, $t7, 2         # 2* (a*b + a* c + b*c)

    sw $t7, area


li $v0, 10
syscall
