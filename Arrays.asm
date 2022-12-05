.data
		myArray: .space 16

.text 
		main:
		
		# load the integers into registers
		addi $s1, $zero, 2
		addi $s2, $zero, 3
		addi $s3, $zero, 4
		addi $s4, $zero, 5

		# Index (Otherwise known)
		# as offset
		addi $t0, $zero , 0
		
		# store the first element at
		# index 0, $t0 = 0
		sw $s1, myArray($t0)
		
		# increment the index
		addi $t0, $t0, 4
		
		# store the second element
		# at index 1 = (1 * 4)
		sw $s2, myArray($t0)
		
		#increment the index(offset)
		addi $t0, $t0, 4
		
		
		# store the third element
		# at index 2 = (2 * 4)
		sw $s3, myArray($t0)
		
		#increment index(offset)
		addi $t0, $t0, 4
		
		# store fourth element
		# at index 3 (3*4)
		sw $s4, myArray($t0)
		
		
		# load a particular element
		# into a register
		#lw $t6, myArray($t0)						# loads the last integer in the array
		
		#addi $t0, $t0, -12
		
		lw $t6, myArray($t0)
		
		li $v0, 1
		addi $a0, $t6, 0
		syscall
		
		
		# to print any value in the
		# array just decrement $t0 by 4 
		# to get the correct index or offset
		
