.data

.text 
	addi $t1 , $zero , 1000 # $t1 = 0 + 1000 (loading directly into the register)
	addi $t2 , $zero , 30	# $2 = 0 + 30 (same)o
	
	
	mult $t1 , $t2		# multiply $t1 and $t2 
	mflo $a0		# move from lo register into $a0 register
	
	li $v0 ,1 
	add $a1, $zero , $a0
	syscall
	
	
	# the diefference between addi and add is 
	# add , adds the value of two register
	# addi , adds a register with an immediate value (i.e a constant)
