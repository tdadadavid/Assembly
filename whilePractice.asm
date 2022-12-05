.data



.text
		main:
		# let i = 0;
		# while(i < 4){
		#   i++;
		# }
		# print(i);
		
		# initialize value for i
		addi $t0, $zero , 0
		
			# while( $t0 < 4)
			while:
					# branch if $t0 is less than 4
					bgt $t0, 4, exit
					# else add 1 to the $t0 register (ie i)
					addi $t0, $t0, 1
			
			# jump back to the while loop
			j while
		
			# ($t0 >= 4)
			exit:
				# preapre to print an integer
				li $v0, 1
				# add 0 to current value of $t0
				addi $a0, $t0, 0
				syscall
			
			
			# terminate code
			li $v0, 10
			syscall
	