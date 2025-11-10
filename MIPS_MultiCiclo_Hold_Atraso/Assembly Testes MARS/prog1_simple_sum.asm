# prog1_simple_sum.asm
.data
array1: .word 1, 2, 3, 4, 5, 6, 7, 8

.text
.globl main
main:
    la    $t0, array1
    li    $t1, 32
    li    $t2, 0

loop1:
    lw    $t3, 0($t0)
    addu  $t2, $t2, $t3
    addiu $t0, $t0, 4
    addiu $t1, $t1, -1
    bne   $t1, $zero, loop1

    sw    $t2, 32($t0)


