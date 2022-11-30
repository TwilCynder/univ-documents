.global _start

image:	.byte 00,00,00,00,00,00,35,35,35,35,00,00,00,00,00,00
		.byte 00,00,00,00,00,00,35,35,35,35,00,00,00,00,00,00
		.byte 00,00,00,00,35,35,35,35,35,35,35,35,00,00,00,00
		.byte 00,00,00,00,35,35,35,00,00,35,35,35,00,00,00,00
		.byte 00,00,00,00,35,35,35,00,00,35,35,35,00,00,00,00
		.byte 00,00,00,00,35,35,35,35,35,35,35,35,00,00,00,00
		.byte 00,00,00,00,00,00,35,35,35,35,00,00,00,00,00,00
		.byte 00,00,00,00,00,00,35,35,35,35,00,00,00,00,00,00

.equ W 8
.equ H 16

@r3 adresse pixel
@r0 resultat

erosion:sub r4, r3, #W
		cmp r4, #0
		beq erode
		sub r4, r4, #1
		cmp r4, #0
		beq erode
		add r4, r4, #2
		cmp r4, #0
		beq erode
		sub r4, r3, #1
		cmp r4, #0
		beq erode
		add r4, r3, #1
		cmp r4, #0
		beq erode
		add r4, r3, #W
		cmp r4, #0
		beq erode
		sub r4, r4, #1
		cmp r4, #0
		beq erode
		add r4, r4, #2
		cmp r4, #0
		beq erode
		
		mov r0, #35
		b ero_fin
erode:	mov r0, #0
ero_fin:mov pc, lr

@r1, r2 : x, y

_start:	
	mov r2, #0
	
boucle_lin:	cmp r2, #H	
			bge fin_bcl_lin
			mov r1, #0
boucle_col:	cmp r1, #W
			bge fin_bcl_col
			
			
			
			add r1, r1, #1
			b boucle_col
fin_bcl_col:add r2, #1
			b boucle_lin	
fin_bcl_lin:

_exit: