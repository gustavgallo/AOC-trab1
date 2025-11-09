# prog5_mixed_rw.asm
.data
buf: .space 256

.text
.globl main
main:
    la    $t0, buf
    li    $t1, 32
    li    $t2, 0

mix_loop:
    lw    $t3, 0($t0)
    addiu $t3, $t3, 1
    sw    $t3, 0($t0)
    addiu $t0, $t0, 8
    addiu $t1, $t1, -1
    bne   $t1, $zero, mix_loop

    la    $t0, buf
    lbu   $t3, 0($t0)
    addiu $t3, $t3, 5
    sb    $t3, 1($t0)

