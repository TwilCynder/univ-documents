.equ PIOB_BASE, 0xFFFFF600
.equ PIO_PER, 0
.equ PIO_OER, 0x10
.equ PIO_ODR, 0x14
.equ PIO_SODR, 0x30
.equ PIO_CODR, 0x34
.equ PIO_PDSR, 0x3C
.EQU LED1, 1<<27
.EQU LED2, 1<<28
.EQU LED3, 1<<29
.EQU LED4, 1<<30
.EQU LEDS, LED1|LED2|LED3|LED4
.EQU SW1, 1<<24
.EQU SW2, 1<<25
.EQU BOUTONS, SW1|SW2
.global _start


tempo:
  ldr r7, =0x20000
  mul r7, r6, r7
  mov r8, #0
  bcl_tempo:
    cmp r8, r7
    beq bcl_fin_tempo
    add r8, r8, #1
    b bcl_tempo
    ldr r2,[r12,#PIO_PDSR]
    tst r2,#SW2
    beq _exit
  bcl_fin_tempo:
  mov pc, lr

_start:
  ldr r12,=PIOB_BASE
  mov r0,#LEDS|BOUTONS
  str r0,[r12,#PIO_PER]
  mov r0,#LEDS
  str r0,[r12,#PIO_OER]
  mov r1,#SW2
  str r1,[r12,#PIO_ODR]
  mov r6, #10

  bcl:
    str r0,[r12,#PIO_CODR]
    bl tempo
    str r0,[r12,#PIO_SODR]
    bl tempo
    b bcl


_exit: mov r0, r0
