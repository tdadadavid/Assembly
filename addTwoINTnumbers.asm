.data
	number1: .word 10
	number2: .word 20

.text
	lw $t1, number1($zero) # copy the value of number1 from the RAM to the register $t1
	lw $t2, number2($zero) # copy the value of number2 from the RAM to the register $t2
	
	add $t3 , $t1 , $t2    # add $t1 and $t2 , then store in $t3
	
	li $v0 , 1 	       # prepare the computer to print an Integer
	add $a0, $zero, $t3    # add 0 and the $t3 , then place in a0
	syscall		       # run
