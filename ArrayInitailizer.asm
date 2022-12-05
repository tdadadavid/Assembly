.data
		myArray: .word 90:3
		newLine: .asciiz "\n"

.text
		main:
		
		addi $t0, $t0, 0
		
		while:
				bge $t0, 12, exit
				
				# print the number
				li $v0, 1
				lw $a0 , myArray($t0)
				syscall
				
				# print new line
				li $v0, 4
				la $a0, newLine
				syscall
				
				# increment index by 1(1*4)
				addi $t0, $t0, 4
		
		j while
	
		
		exit:
			li $v0, 10
			syscall