.data
			response1: .asciiz "They're equal"
			response2: .asciiz "They're not equal"
.text
		main:
				addi $t1 ,$zero , 40
				addi $t0 , $zero, 40
				
				beq $t1 , $t0 , numbersAreEqual
				li $v0 , 4
				la $a0 , response2
				syscall
				
		# terminate the program
		li $v0, 10
		syscall
		
		numbersAreEqual: 
					li $v0 , 4
					la $a0, response1
					syscall
					
					li $v0 ,10
					syscall
		
				