.data

		response1: .asciiz "They are different"
		response2: .asciiz "They the same"

.text 
		main:
		
			addi $t0, $zero, 12
			addi $t2, $zero, 120
			
			# branch if not equal
			# else print 'they are the same"
			bne $t0, $t2 numbersAreNotEqual
			li $v0, 4
			la $a0, response2
			syscall
			
		#terminate the program
		li $v0, 10
		syscall		
			
			# if numbers are not equal print 
			# they're not equal
			numbersAreNotEqual:
				li $v0, 4
				la $a0, response1
				syscall