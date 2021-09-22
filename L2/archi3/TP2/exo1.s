.global _start
operateur: .byte '*'
.align


_start:


mov r1, #10
mov r2, #5

adr r0, operateur
ldrb r0, [r0]

cmp r0, #'+'
beq add
bhi sub
mul: mul r3, r1, r2
b fin
add: add r3, r1, r2
b fin
sub: sub r3, r1, r2
fin:

_exit: mov r0, r0
b _exit
