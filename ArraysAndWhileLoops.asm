.data
		# we wanna load 5 elements into
		# the array
		numbers: .space 20


.text
		main:
		# int index = 0;
		# int element = 2
		# while(index < arr.length){
		#   arr[index] = element;
		# 	index++;
		# 	element *= 2
		# }
		
		# initialize thne index to 0
		addi $t0, $t0, 0
		
		# initialize element
		addi $t2, $t2, 2
		
		# load intgers into an array using while loop
		
		# while( $t0 < numbers(20))
		while:
				# if $t0 == numbers break
				beq $t0, 16, Equals
			
			# first-pass:
			# arr[0] = 2
			sw $t2 , numbers($t0)
			
			
			# element *= 2
			mul $t2, $t2, 2
			
			# index++ 
			# index = index + 1
			# but actually it is
			# index = index + 4 
			# because were working with 
			# 4 bytes for each elemet(integer)
			addi $t0, $t0, 4
		
		j while
		
		# terminate program
		li $v0, 10
		syscall
		
		
		Equals:
				li $v0, 1
				addi $t0, $t0, 0
				syscall
				
		
				
