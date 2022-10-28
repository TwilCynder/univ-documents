	.meta source "\"autos/neg.auto\""
	.meta fields "[{ \"name\": \"\", \"num\": 0, \"lo\": 0, \"hi\": 1 }]"
	invoke 1, 2, 3
	seti r4, #1
	seti r0, #0
L0:
	seti r1, #0
L1:
	invoke 3, 0, 1
	invoke 5, 10, 6
	seti r11, #0
	sub r11, r11, r10
	set r5, r11
	seti r9, #0
	sub r9, r9, r5
	set r6, r9
	add r7, r5, r6
	seti r8, #0
	sub r8, r8, r7
	invoke 4, 8, 0
	add r1, r1, r4
	goto_lt L1, r1, r3
	add r0, r0, r4
	goto_lt L0, r0, r2
	stop
