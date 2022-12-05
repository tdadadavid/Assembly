.data
	message: .asciiz "Hi everybody \n My name is King"
.text
	# Caller function
	main:
	jal displayMessage		# jump and link register 
	
	
	# terminate a program
	li $v0 , 10
	syscall
	
	# Calle function
	displayMessage:
		li $v0 ,4
		la $a0 , message
		syscall
		
		jr $ra			# jump register
		