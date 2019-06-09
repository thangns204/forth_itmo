: cat 
	over count over count 1 + + 
	heap-alloc dup >r 
	dup rot 
	dup count >r 
	dup >r ( save str1 addr ) 
	string-copy 
	r> heap-free 
	r> + swap 
	dup >r ( save str2 addr)
	string-copy 
	r> heap-free ( free str2 )
	r> prints
;