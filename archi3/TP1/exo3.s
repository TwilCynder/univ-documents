.global _start
.equ N, 24

_start:

mov r1, #0 @ iterator
mov r3, #0
mov r4, #0
mov r5, #0
lp: cmp r1, #N
beq end
mov r2, r1

movs r2, r2, LSR #1
addcc r3, r1
movs r2, r2, LSR #1
addcc r4, r1
movs r2, r2, LSR #1
addcc r5, r1

add r1, #1
b lp
end:

_exit: mov r0, r0
