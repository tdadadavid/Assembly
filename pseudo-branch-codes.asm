.data
		message: .asciiz "Voila"
		message2: .asciiz "Noh"

.text
		main:
			
			addi $s0, $zero, 20
			addi $s2, $zero, 30
			
			# branch if greater than
			# $s0 = (20 > 30) ? 1 : 0
			# $s0 = 0
			# blt $s0 , $s2 lessThan
			# bgt $s0, $s2 greaterThan
			#	bge $s0, $s2 greaterThanOrLessThan
			
			bgt $s0, $s2 greaterThan
			li $v0, 4
			la $a0, message2
			syscall
			
			
		# terminate the code
		li $v0,10
		syscall
			
		greaterThan:
			li $v0, 4
			la $a0, message
			syscall
		
		#example of psuedocodes
			# blt => branch if less than
			# bgt => branch if greater than
			# bgtz => branch if greater than zero