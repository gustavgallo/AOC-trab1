# prog3_temporal_locality.asm
.data
ws: .word 10,20,30,40
count: .word 100

.text
.globl main
main:
    la    $t0, ws
    lw    $t1, count
    li    $t2, 0

rep_loop:
    lw    $t3, 0($t0)
    addu  $t2, $t2, $t3
    lw    $t3, 4($t0)
    addu  $t2, $t2, $t3
    lw    $t3, 8($t0)
    addu  $t2, $t2, $t3
    lw    $t3, 12($t0)
    addu  $t2, $t2, $t3

    addiu $t1, $t1, -1
    bne   $t1, $zero, rep_loop

    sw    $t2, 16($t0)

