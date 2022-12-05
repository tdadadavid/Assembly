.data
		message1: .asciiz "We are family"
		message2: .asciiz "we are not family"
		message3: .asciiz "I don't know him"

.text 
		main:
			addi $t0, $t0, 2
			
			while:
				
				blt $t0, 2, lessThan
				
				bgt $t0, 2, greaterThan
				
				li $v0, 4
				la $a0, message3
				syscall
			
			li $v0, 10
			syscall
			
			lessThan:
					li $v0, 4
					la $a0, message1
					syscall
					break
					
					
			greaterThan:
					li $v0, 4
					la $a0, message2
					syscall
					break
				
				
				
				
				
				
				
				
				
