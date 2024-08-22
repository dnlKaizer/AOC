la $s7, 0x10010000
sw $s2, 0($s7)
FOR: beq $s2, $s0, ELSE
	add $s2, $s2, $s1 # s2 += 1
	sub $s0, $s0, $s1 # s0 -= 1
	add $t0, $s2, $s2 
	add $t0, $t0, $t0 # t0 = 4 * s2
	add $t0, $s7, $t0 # t0 recebe endereço de s7 + 4 * s2
	sw $s2, 0($t0) # guarda s2 no endereço de t0
	j FOR
ELSE:
lw $s3, 4($s7)
lw $t1, 8($s7)
add $s3, $s3, $t1
lw $t1, 12($s7)
add $s3, $s3, $t1
lw $t1, 16($s7)
add $s3, $s3, $t1
lw $t1, 20($s7)
add $s3, $s3, $t1
and $s4, $s3, $s0
or $s5, $s3, $s0 