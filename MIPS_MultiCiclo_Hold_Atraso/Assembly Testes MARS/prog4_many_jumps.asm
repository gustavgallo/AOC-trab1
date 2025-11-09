# prog4_many_jumps_simple.asm
.text
.globl main
main:
    addiu $t0, $zero, 0
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
    j     END

END:
    # fim — processador vai sair do fluxo e gerar INVALID INSTRUCTION
