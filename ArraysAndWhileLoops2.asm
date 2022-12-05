# this code is for printing the values 
# in array using while loop
# int i = 0;
# while(i < arr.length){
#		print(arr[i]);
#	}
# echo "Printing complete"
.data
		# we wanna store 5 elements in an array
		numbers: .space 16,
		message: .asciiz " Printing complete",
		newLine: .asciiz ", ",

.text
		main:
		
			addi $s1, $s1, 90
			addi $s2, $s2, 12
			addi $s3, $s3, 30
			addi $s4, $s4, 45
			addi $s5, $s5, 30
				
			# initialize the index
			addi $t0, $t0, 0	
			
			# store first element at index 0
			sw $s1, numbers($t0)
			
			# increment the index(offset)
			addi $t0, $t0, 4
			
			# store second element at index 1 (1*4)
			sw $s2, numbers($t0)
			
			# increment the index(offset)
			addi $t0, $t0, 4
			
			# store third element at index 2 (2*4)
			sw $s3, numbers($t0)
			
			# increment the index(offset)
			addi $t0, $t0, 4
			
			# store fourth element at index 3 (3*4)
			sw $s4, numbers($t0)
			
			# increment to store the last element (4*4)
			addi $t0, $t0, 4
			
			# store last element
			sw $s5, numbers($t0)
		
			
			# make sure $t1 = 0
			addi $t1, $t1, 0
			
			# while($t1 < 16)
			while:
					# if($t1 > 16) go to greaterThan
					bgt $t1, 16, greaterThan
					
				# else print each element
				# jump to printElement
				jal printElement
				
				#print new line
				jal printNewLine
				
				# increment $t1 by 4
				addi $t1, $t1, 4
			
			# if condition holds continue
			j while
		
		# if condition doesn't hold
		# print message
		# work on my message stuff
		greaterThan:
			li $v0, 4
			la $a0, message
			syscall
		
		# terminate program
		li $v0, 10
		syscall
		
		# print each element
		printElement:
			li $v0, 1
			lw $t2 , numbers($t1)
			addi $a0, $t2, 0
			syscall
			
			jr $ra
		
		# print a new line
		printNewLine:
			addi $sp, $sp ,-4
			sw $ra 0($sp)
			li $v0, 4
			
			la $a0, newLine
			syscall
			
			lw $ra 0($sp)
			
			addi $sp, $sp, 4
			  
			jr $ra
