.data



.text
		main:
		
		# multiply the given index by two
		# valueOf(f) * 4
		mul $t0, $t0, 4
		
		# store the value a the particular index
		# A[f]
		sw $t1, $t0($s6) 		# store the value of at A[f] in $t1
		
		# $s0 = 1+f
		addi $s0, $t0, 4
		
		# A[1+F]
		sw $t2, $s0($s6)
		
		# A[f] + A[1+f]
		add $t3, $t1, $t2

		# g
		mult $t4, $s1, 4
		
		# B[g]
		sw $t5 , $t4($s7)
		
		# B[g] = $t3
		add $t5, $t3, 0
		