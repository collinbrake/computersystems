li $s0, 0
li $s1, 0
li $s2, 0
li $s3, 6
li $s4, 4

main:
	beq $s0, $s1, else
	addi $t0, $t0, 0
if:	
	add $s2, $s3, $s4
	j exit
	addi $t0, $t0, 0
else:
	sub $s2, $s3, $s4
exit: