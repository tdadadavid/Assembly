.data
	number1: .word 10
	number2: .word 3
	
.text
	lw $s0 , number1	# $s0 gets a value of 10
	lw $s2 , number2	# $s2 get a value of 3
	
	sub $t0 , $s0, $s2	# $t0 = $s0 - $s2
	
	li $v0 , 1		# prepare to print an integer
	move $a0 , $t0		# copy the value of $t0 into $a0
	syscall
