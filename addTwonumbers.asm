.data
	number1: .word 10
	number2: .word 10
	
.text
	lw $t1 , number1	# put the value of number1 into $t1
	lw $t2 , number2	# put the value of number2 into $t2
	
	add $s1 , $t1 , $t2	# add $t1 and $t2 and store in $s1
	
	li $v0 , 1		# prepare to print an integer
	move $a0 , $s1		# move the value from $s1 to register $a0
	syscall 
	
