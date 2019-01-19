.text
# addiu
addiu $s0, $zero, 0x00002000
addiu $t0, $zero, 10
sw $s0, 0($s0)
sw $t0, 4($s0)
addiu $t1, $s0, 8
sw $t1, 0($t1)
# addu
addu $t1, $t0, $t0
sw $t1, 0x0000200c
# beq
beq $t0, $t0, if_1_else
	addiu $t0, $zero, 1
if_1_else:
	addiu $t0, $t0, 1
sw $t0, 0x00002010
beq $t1, $s0, if_2_else
	addiu $t0, $zero, 1
if_2_else:
	addiu $t0, $t0, 1
sw $t0, 0x00002014
# subu
subu $t0, $t0, 1
sw $t0, 0x00002018
# slt
# slt $t1, $t0, $s0
# sw $t1, 0x0000201c
# slt $t1, $s0, $t0
# sw $t1, 0x00002020
# ori
addiu $t1, $zero, 6
ori $t2, $t1, 1
sw $t2, 0x00002024
# lui
lui $t0, 2
sw $t0, 0x0000202c
# jal, jr
# jal test
# addiu $t0, $zero, 1
# sw $t0, 0x00002034
# j
j jump
	addiu $t0, $zero, 8
jump:
sw $t0, 0x00002038
# lw
lw $t0, 0x00002004
sw $t0, 0x0000203c

# test:
# sw $ra, 0x00002030
# jr $ra

#################
# check
# 0x00002000
# 0x0000000a
# 0x00002008
# 0x00000014
# 0x0000000b
# 0x00000002
# 0x00000001
# 0x00000000
# 0x00000000
# 0x00000007
# 0x00000000
# 0x00020000
# 0x00000000
# 0x00000000
# 0x00020000
# 0x0000000a