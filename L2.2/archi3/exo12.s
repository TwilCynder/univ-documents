.global _start
.equ DEL_Registre, 0xff200000   
.equ Boutons_Registre, 0xff20005c
.equ A7S_Registre1, 0xff200020 
.equ A7S_Registre2, 0xff200030
.equ wait_time, 0x100000

a7s_vals:	.int 0x3F, 6, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 7, 0x7F, 0x6F
a7s_mouv:	.int 0, 0x3E00, 0x3F00

wait1s:		mov r12, #wait_time
wait1s_bcl:	sub r12, r12, #1
			cmp r12, #0
			bgt wait1s_bcl
			mov pc, lr
			
			
wait:		stmfd sp!, {r11, r12, lr}
			mov r11, #0
wait_bcl:	bl wait1s
			add r11, r11, #1
			cmp r11, r0
			blo wait_bcl
			ldmfd sp!, {r11, r12, pc}
			mov pc, lr

ouvrir_porte:	stmfd sp!, {r11, r12, lr}
				bl wait1s
				ldr r11, =0x3FF
				str r11, [r7]
				bl wait1s
				ldr r11, =0x3CF
				str r11, [r7]
				bl wait1s
				ldr r11, =0x387
				str r11, [r7]
				bl wait1s
				ldr r11, =0x303
				str r11, [r7]
				bl wait1s
				ldr r11, =0x201
				str r11, [r7]
				ldmfd sp!, {r11, r12, pc}

fermer_porte:	stmfd sp!, {r11, r12, lr}
				bl wait1s
				ldr r11, =0x201
				str r11, [r7]
				bl wait1s
				ldr r11, =0x303
				str r11, [r7]
				bl wait1s
				ldr r11, =0x387
				str r11, [r7]
				bl wait1s
				ldr r11, =0x3CF
				str r11, [r7]
				bl wait1s
				ldr r11, =0x3FF
				str r11, [r7]
				ldmfd sp!, {r11, r12, pc}

afficher_etage:	ldr r12, [r6, r0, lsl #2]
				str r12, [r9]
				mov pc, lr

afficher_mouv:	ldr r12, [r5, r0, lsl #2]
				str r12, [r10]
				mov pc, lr

lecture_boutons:ldr r0, [r8]
				mov r12, #0b1111
				str r12, [r8]
				mov pc, lr
	
_start:
	adr r5, a7s_mouv
	adr r6, a7s_vals
	ldr r7, =DEL_Registre
	ldr r8, =Boutons_Registre
	ldr r9, =A7S_Registre1
	ldr r10, =A7S_Registre2
	
	mov r0, #0
boucle:	bl lecture_boutons
		str r0, [r7]
		b boucle
   
_exit: b _exit