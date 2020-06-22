First	DCD		0x390de7a3 ; load 32 bit number into memory
		MOV		r0, #First ; r0 points now has the memory address for First
Second	DCD		0x7D23  ;Load 16 bit number into memory
		;		Why cant we use mov to put 0x7D23 into a register?
		ldr		r1, [r0], #4   ;load contents of First into r1 and increment r0
		ldr		r2, [r0], #4   ;load contents of Second into r2 and increment r0
		sub		r3,r1,r2       ; Do the subtraction
		;		str		r3,[r0]        ; save result
		
		;		Of course to do the str you need to know that First is equal to 0x0100
		;		Probably this would be better;
		;		Replace line 8 onwards with:
		MOV		r4, #0x108
		str		r3, [r4]
