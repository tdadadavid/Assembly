.data

.text
	# f = g + ( h - 5)
	
	addi $t0 , $zero , 10		# this is for F
	addi $t1 , $zero , 20		# this is for G
	addi $t3 , $zero , 5			# this is for -5
	
	sub $t4 , $t1, $t3		# subtract -5 from 20
	
	add $t5, $t0 , $t4		# add the result to F and store in $t5
	
	
	li $v0 , 1
	add $a0 , $zero , $t5
	syscall
	