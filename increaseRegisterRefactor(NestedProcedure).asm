.data
			newLine: .asciiz "\n"

.text
		main:
			addi $s0 , $zero , 4							# $s0 = 0 + 4
		
			# jump and go to this procedure
			# increase the value given
			jal increaseRegister							
			
			# print new line
			jal printNewLine
		
			#print value
			# jump and go to procedure
			jal printValue
		
		# terminate the code
		li $v0 ,10
		syscall
		
		increaseRegister:
			addi $sp, $sp ,-8							# create a 8 byte space in the stack to store two values
			sw $s0, 0($sp)								# store the value in $s0 into the offset int the space created in the stack
			sw $ra,	4($sp)								# store the return address of this procedure in the second space in the stack
			
			# multipy the value by
			# itself
			mult $s0 , $s0
			mflo $s0
			
			# increment the value by 4
			#addi $s0 , $s0 ,4								
			
			# jump to the print procedure
			jal printValue													
			
			# restore $s0 and $ra 
			lw $s0 , 0($sp)
			lw $ra , 4($sp)
			
			#restore the stack to its orignal state
			#since we took 4 bytes from it ,
			# so we put 4 back into it
			addi $sp , $sp ,4								 
			
			
			# return the value
			jr $ra
			
			
		printValue:
			li $v0 , 1
			move $a0 , $s0
			syscall
			
			
			jr $ra	
			
			
		printNewLine:
			li $v0 , 4
			la $a0 , newLine
			syscall
			
			jr $ra
			
			
			
			# NOTE: before you restore the stack 
			# first restore the value of the $s registers from the stack
			
			# Note also that wen using a nested procedure 
			#	we have to store the return address of the caller function
			
			
			
			
		
		
