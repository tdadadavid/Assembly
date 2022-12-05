.data
			response1: .asciiz "30 is greater than 20"
			response2: .asciiz "20 is not greater than 30"

.text
		main:
			addi $t0, $zero, 20
			addi $t2, $zero, 30
			
			# set greater than
			# $s0 = ($t2 > $t0) ? 1 : 0
			# $s0 == 1 (30 > 20) == 1
			# 
			sgt $s0, $t2 , $t0
			beq $zero , $s0, notGreaterThan
			li $v0, 4
			la $a0, response1
			syscall
			
		# terminate the code
		li $v0, 10
		syscall
		
		notGreaterThan:
			li $v0, 4
			la $a0, response2
			syscall 		
				
	