.text

.data
	main:
	    addi $t1 , $zero , 4		# add 0 and 4 and store in $a1 register
	    addi $t2 , $zero , 34		# add 0 and 34 and store in $a2 register
	    
	    jal SumTwoNum			# jump and link to this address (the address of SumTwoNum)
	    
	    li $v0 , 1
	    addi $a0 , $zero ,$v1
	    syscall
	    

	# terminate the program
	li $v0,10
	syscall
	    
	SumTwoNum:				# a function or PROCEDURE
	    add $v1, $t1 , $t2			# $v1 = #a0 + $a2
	    jr $ra 				# jump to $ra (return register)
	    
	    

	
	# we use ($a0...$a3) to store arguements
	# and we use $v1 to store the result we wanna to return
	# in the procedure
