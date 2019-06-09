: isprime 
	dup 0 < if ." Input Need bigger than zero " else
  	dup 2 < if drop 0 else
		1 >r 
			repeat  
				dup 
				r> 1 + dup >r  
				% 0 = 	
			until 
		r> = 
	then
	then
;

: isprime-allot
	isprime
	1 allot 
	dup rot swap 
	! 
;