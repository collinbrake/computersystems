loop:
    subi $t0, $s1, 1
    sll $t0, $t0, 2
    add $t0, $t0, $s0
    lw $t1, 0($t0)
    bne $t1, $s2, next
    addi $t0, $s1, 1
    sll $t0, $t0, 2
    lw $t1, 0($s0)
    beq $t1, $s2, next
    addi $s1, $s1, 1
    j loop
next: