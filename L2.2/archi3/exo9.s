.global _start

tab: .int 9, -4, 27592, 0, -27592, 9, -4, 27592, 0, -27592
.equ N, 10

ABS: 	cmp r1, #0
		rsblt r0, r1, #0
		movge r0, r1
		mov pc, lr

_start:	
		mov r2, #0
		adr r3, tab
		mov r4, #0
bcl:	cmp r2, #N
		bhs finbcl
		ldr r1, [r3, r2, lsl #2]
		bl ABS
		add r4, r4, r0
		add r2, r2, #1
		b bcl
finbcl: b finbcl


	
	