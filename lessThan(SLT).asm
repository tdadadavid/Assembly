.data
		response1: .asciiz "less than"
		response2: .asciiz "greater than"
.text
		main:
		
		# load values into 
		# appropraite registers
		addi $t0, $zero, 20
		addi $t2, $zero, 200
		
		# set less than 
		# $s0 = ($t0 < $t2) ? 1 : 0
		# $s0 = (20 < 200)  == 1 (because 20 is less than 200)
		# branch if $s0 == 1 ie if its true
		# else print false
		slt $s0 , $t0 , $t2
		beq $s0 , $zero , greaterThan
		li $v0, 4
		la $a0, response1
		syscall
		
		# terminate the program
		li $v0, 10
		syscall
		
		# print they're eqaul
		greaterThan:
		li $v0, 4
		la $a0, response2
		syscall


		# 0 => False
		# 1 => True
		