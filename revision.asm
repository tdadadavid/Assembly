# contains all the data in our programs
# Just like all variables in java
.data
    	message: .asciiz "hello assembly \n"

# has all instructions in our program
.text 
	li $v0, 4
	la $a0, message
	syscall