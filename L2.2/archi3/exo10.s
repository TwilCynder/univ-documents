.global _start
month_quant: .int -1, 0, 31, 59, 90, 120, 151, 181, 212, 243,273,304,334


DEBUT:	ldr r0, [r7, r5, lsl#2]
  		mov pc, lr
		
DIVISIBLE:	
			stmfd sp!,{r5}
bcl_modulo:	cmp r5, r6
			blo fin_bcl_mod
			sub r5, r5, r6
			b bcl_modulo
fin_bcl_mod:cmp r5, #0 
			moveq r0, #1
			movne r0, #0
			ldmfd sp!,{r5}
			mov pc, lr

BISSEXTILE:	stmfd sp!,{r6, lr}
			mov r6, #400
			bl DIVISIBLE
			cmp r0, #1
			beq est_biss
			mov r6, #4
			bl DIVISIBLE
			cmp r0, #0
			beq non_biss
			mov r6, #100
			bl DIVISIBLE
			cmp r0, #1
			beq non_biss

est_biss:	mov r0, #1	
			b fin_biss
non_biss:	mov r0, #0
fin_biss:	ldmfd sp!,{r6, lr}
			mov pc ,lr

@r1 jour r2 mois r3 année
@r4 quantième (output)

_start: adr r7, month_quant
		mov r5, r2
		bl DEBUT
		mov r4, r0
		add r4, r1
		
		cmp r2, #3
		blo endif
		mov r5, r3
		bl BISSEXTILE
		cmp r0, #1
		addeq r4, r4, #1
endif:	
		
fin:	b fin
		
	
	