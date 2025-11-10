# prog4_many_jumps_long.asm
.text
.globl main
main:
    addiu $t0, $zero, 0
    li     $t9, 20         # contador de repetições (ajusta conforme precisar)

main_loop:
    j     L1

L1:
    addiu $t0, $t0, 1
    j     L2

L2:
    addiu $t1, $t1, 2
    j     L3

L3:
    addiu $t2, $t2, 3
    j     L4

L4:
    addiu $t3, $t3, 4
    j     L5

L5:
    addiu $t4, $t4, 5
    j     L6

L6:
    addiu $t5, $t5, 6
    j     L7

L7:
    addiu $t6, $t6, 7
    j     L8

L8:
    addiu $t7, $t7, 8
    j     L9

L9:
    addiu $t8, $t8, 9
    j     L10

L10:
    addiu $t0, $t0, 10
    j     L11

L11:
    addiu $t1, $t1, 11
    j     L12

L12:
    addiu $t2, $t2, 12
    j     L13

L13:
    addiu $t3, $t3, 13
    j     L14

L14:
    addiu $t4, $t4, 14
    addiu $t9, $t9, -1       # decrementa o contador
    bne   $t9, $zero, main_loop

END:
    # fim — processador vai sair do fluxo e gerar INVALID INSTRUCTION
