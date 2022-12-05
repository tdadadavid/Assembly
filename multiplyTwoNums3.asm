.data

.text
	addi $s1, $zero, 2	# $s1 = 0 + 2
	addi $s2, $zero, 3	# $s2 = 0 + 3
	
	add $t0 , $s1, $s2	# $t0 = $s1 + $s0 
	
	sll $t1, $t0 , 2	# $t1 = ($t0) * (2 ^ 2) 
	# sll $t0 , $t1 , 1	# $t0 = ($t1) * (2 ^ 1)
	
	li $v0 , 1
	add $a0 , $zero , $t1
	syscall
	
	# shift-left-logical => multiplication
	# shift-right-logical => Division
	
