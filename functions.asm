.data
	message: .asciiz  "Hi everyone my name is David \n"
.text
	main:
		jal displayMessage		# jump to this address 
		
		# tell the system the program has ended
		# if you don't put this it will become an infinite recursion
		li $v0 , 10
		syscall
	
	
	displayMessage:
		li $v0 , 4 			# prepare to print an string
		la $a0 , message		# load the message into $a0 register
		syscall
		
		jr $ra


	# to print integer 			l1 $v0 , 1
	# to print strings and char 		li $v0, 4
	# to print float 			li $v0, 2
	# to print double 			li $v0 , 3
	