.data

.text
	addi $s0 , $zero , 90		# $s0 = 0 + 90
	addi $s1 , $zero , 10		# $s1 = 0 + 10
	
	
	# we can either use div or SRL (shift right logical)
	div $t1, $s0 , $s1		# $t1 = ($s0 / $s1)
	
	
	# display
	li $v0 , 1			# prepare to print an integer
	move $a0 , $t1			# move the value stored in $t1, to $a0 (arguement register)
	syscall
