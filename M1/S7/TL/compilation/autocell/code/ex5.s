@ Exercise 5

	invoke 1, 2, 3
	seti r4, #1
    seti r5, #0

	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1 
	invoke 5, 6, 0 @getting current cell
	goto_ne else, r6, r4 @if current cell val equals 1 (r4)
	invoke 4, 5, 0 @set it to 0 (r5)
    goto endif
else:
    
    invoke 5, 6, 1
    goto_eq setTo1, r6, r4
    invoke 5, 6, 2
    goto_eq setTo1, r6, r4
    invoke 5, 6, 3
    goto_eq setTo1, r6, r4
    invoke 5, 6, 4
    goto_eq setTo1, r6, r4
    invoke 5, 6, 5
    goto_eq setTo1, r6, r4
    invoke 5, 6, 6
    goto_eq setTo1, r6, r4
    invoke 5, 6, 7
    goto_eq setTo1, r6, r4
    invoke 5, 6, 8
    goto_eq setTo1, r6, r4

    goto endif 
setTo1:
    invoke 4, 4, 0

endif: 
    @loop management
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop

@r0 : loop x
@r1 : loop y
@r2 : w
@r3 : h
@r4 : #1
@r5 : #0
@r6 : current cell val when relevant