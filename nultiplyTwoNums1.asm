.data

.text
	# loading directly the integer valus into the register 
	# am not loading them from the Random Access Memory (RAM)
	
	addi $s0, $zero, 10 	# $s0 = 0 + 10
	addi $s1 , $zero , 34	# $s1 = 0 +  34
	
	mul $t0 , $s0 , $s1 	# $t0 = $s0 * $s1
	
	li $v0 , 1		# prepare to print an integer number 
	add $a0 , $zero , $t0 	# $a0 = 0 + $t0
	syscall			# run