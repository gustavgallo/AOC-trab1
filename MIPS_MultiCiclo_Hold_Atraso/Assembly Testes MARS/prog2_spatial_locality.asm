# prog2_spatial_locality_fixed.asm
.data
bigarr: 
    .word 1,2,3,4,5,6,7,8
    .word 9,10,11,12,13,14,15,16
    .word 17,18,19,20,21,22,23,24
    .word 25,26,27,28,29,30,31,32
    .word 33,34,35,36,37,38,39,40
    .word 41,42,43,44,45,46,47,48
    .word 49,50,51,52,53,54,55,56
    .word 57,58,59,60,61,62,63,64

.text
.globl main
main:
    la    $t0, bigarr     # endereço base do vetor (deve apontar para 0x10010000 ou similar)
    li    $t1, 64
    li    $t2, 0

sp_loop:
    lw    $t3, 0($t0)
    addu  $t2, $t2, $t3
    addiu $t0, $t0, 4
    addiu $t1, $t1, -1
    bne   $t1, $zero, sp_loop

    sw    $t2, -4($t0)    # salva soma no final do vetor