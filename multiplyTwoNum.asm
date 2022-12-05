.data
	number1: .word 10034
	number2: .word 7290932803323894774309

.text
	#there are three ways to perform multiplication
	# mul , takes three parameters
	# mult, takes two parameters
	# sll (shift left logical) 

	lw $s0, number1		# load word (since an integer is a word) to $s0
	lw $s1, number2		
	
	# there is a draw back using this method
	# it can only multiply two 16 bits numbers
	# the product of two 16bits numbers is a 32bit number
	# which can only be stored in one register
	
	mul $t0 , $s0 , $s1	# $t0 = $s0 * $s1
	
	li $v0 , 1		# prepare to print an integer
	move $a0 , $t0		# move the value of $t0 to $a0 register
	syscall			# run
