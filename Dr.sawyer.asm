.data
		prompt: .asciiz "Enter the value of N \nN = "
		message: .asciiz "sum = "

.text
							main:
							
							li $v0, 4
							la $a0, prompt
							syscall
							
							# enter the value for N
							li $v0, 5
							syscall
							
							# initialize i to 1
							addi $t0, $zero, 1
							
							# initilize p to 0
							addi $t2, $zero, 0
							
							for:
									# i <= N
									bgt $t0, $v0, Result
									
									# int p += i
									add $t2, $t2, $t0
									
									# i++
									addi $t0, $t0, 1
									
									j for
							
							# end program 				
							li $v0, 10
							syscall
							
						# print the value	
						Result:
							li $v0, 4
							la $a0, message
							syscall
							
							li $v0, 1
							move $a0, $t2
							syscall
					
									
									
				