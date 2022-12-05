.data

		message1: .asciiz "While loop done end"
		spaceAndComma: .asciiz ", "
		star: .asciiz "****"
		
.text
		main:
				# code snippet in C
				#int i = 0;
				#while(i <= 10){
				#	i++;
				#}
				
				addi $t0, $zero, 0
				
				while:
							bgt $t0, 10 , exit
							jal printNum
					
					addi $t0, $t0, 1
					
				j while
				
				exit:
				li $v0, 4
				la $a0, message1
				syscall
		
		# End of main		
		li $v0, 10
		syscall
		
		printNum:
		li $v0, 1
		add $a0, $t0 , $zero
		syscall
		
		li $v0, 4
		la $a0, spaceAndComma
		syscall
		
		jr $ra
				
