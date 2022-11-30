.global _start

_start:
mov r5,#32
mov r6,#24

lp: cmp r6, #0
beq end

mov r1,r5
sublp: cmp r1, r6
blt subend
sub r1, r1, r6
subend: mov r5, r6
mov r6, r1
b lp
end:
mov r2, r5

_exit: mov r0, r0
