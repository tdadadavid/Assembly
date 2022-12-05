.data 
	message: .asciiz "my age is: "
	age: .word 30

.text
	li $v0, 4
	la $a0, message
	syscall 
	
	li $v0, 1
	lw $a0, age
	syscall