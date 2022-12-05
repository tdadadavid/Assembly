.data
	# 8 bits = 1 byte
	# 4bytes = 1 word
	
	age: .word 18 # an integer is 1 word 

.text
	li $v0 ,  1 # load a 16 bit
	lw $a0 , age
	syscall 
