.data
		prompt: 		 			.asciiz "Enter any number of yor choice: "
		resultMessage: 		.ascii "The answer is:"
		userInput: 				.word 0
		factResult: 			.word 0

.text
		main:
			#Tell the user to enter an input of choice
			li $v0,4
			la $a0, prompt
			syscall
			
			# Accept the user input
			li $v0, 5
			syscall
			
			# store the user input in userInput 
			sw $v0, userInput
			
			# load the value into the arguement register
			# by convention $a0 is used to pass arguements into 
			# a function or procedure
			lw $a0, userInput
			
			# Call the factorial function
			jal factorialFunc
			
			# store the answer in the factResult variable
			# by convebtion $v0 is used to return from a function(procedure)
			sw $v0, factResult
			
			# Print the resultMessage
			li $v0, 4
			la $a0, resultMessage
			syscall
			
			#print the factorial result
			li $v0,1
			lw $a0, factResult
			syscall
			
			# end the program
			li $v0,10
			syscall
			
			
			
		factorialFunc:
				# create space in the stack
				subu $sp,$sp, 8
				
				# store the value of $s0 in the stack
				sw $s0, ($sp)
				
				# store the value of the return register
				sw $ra, 4($sp)
				
				#base case
				# if n == 1 end the recursion
				li $v0, 1
				beq $a0, 0 factorialEnd
				
				# store the value in $a0 in $s0
				# $s0 = $a0 + 0
				addi $s0, $a0, 0
				
				# get the n-1 
				addi $a0, $a0, -1
				jal factorialFunc
				
				# input * factoriallFunc(n-1)
				mul $v0, $s0, $v0
				
		
				factorialEnd:
						# restore all values froom the stack
						lw $s0, ($sp)
						lw $ra, 4($sp)
						
						# restore the size of the stack
						addu $sp, $sp, 8
						
						jr $ra
				
				
