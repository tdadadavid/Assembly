.data

.text
	addi $t0, $zero, 10		# $t0 = 0 + 10
	addi $t1, $zero, 3		# $t1 = 0 + 2
	
	div $t0, $t1			# $t0 / $t1
					# the quotient of this division is stored at 'lo' register
					# the remainder of this division is stored at 'hi' register
	
	mflo $s0			# move the qoutient is stored in the 'lo' register to $s0 register
	mfhi $s1			# move the remainder is stored in 'hi' register to $s1 register
	
	#display
	li $v0 , 1			# prepare to print an integer
	#add $a0 , $zero , $s0		# $a0 = 0 + $s0 (print the quotient)
	add $t1 , $zero , $s1    	#$a0 = 0 + $s1 (print the remainder)	
	syscall
