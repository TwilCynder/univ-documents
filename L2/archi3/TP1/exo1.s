.global _start

_start:

mov r1, #34
mov r2, #54
cmp r1, r2

movle r3, r2
movgt r3, r1

_exit: mov r0, r0
