.global _start

@r0/r1/r2 : input
@r4 : output
@r5 : divisible output/input
@r7 : tab

month_quant: .int -1, 0, 31, 59, 90, 120, 151, 181, 212, 243,273,304,334

_start:
  mov r1, #23
  mov r2, #5
  ldr r3,=2000
  adr r5, month_quant
  bl prev_day
  add r0, r0, r1

_exit: mov r0, r0

prev_day:
  ldr r0, [r7, r2, lsl#2]
  mov pc, lr

divisible:

div_mod:
  mov r5, 0
  bcl_div:
    cmp r3, r4
    blo fin_blc_div
    sub r3, r3, r4
