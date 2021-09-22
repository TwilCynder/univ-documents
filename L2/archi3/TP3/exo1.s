.global _start
tab: .int 9, -4, 27592, 0, -27592, 9, -4, 27592, 0, -27592

_start:
adr r2, tab
mov r4, #0
mov r3, #0

loop: cmp r3, #10
beq _exit
ldr r1,[r2],#4
bl abs
add r4, r4, r0
add r3, r3, #1
b loop

_exit: mov r0, r0

abs:
mov r0, r1
cmp r1, #0
rsblt r0, r1, #0
mov pc, lr
