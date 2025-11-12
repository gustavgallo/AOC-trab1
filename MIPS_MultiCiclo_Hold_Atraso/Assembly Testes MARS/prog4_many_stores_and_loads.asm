# prog4_many_jumps_heavy.asm
# Vários saltos e acessos à memória com mini-loop interno (~40.000–50.000 ns)

.data
buf: .space 512        # área de memória usada para loads/stores

.text
.globl main
main:
    li     $t9, 10          # contador de repetições externas
    la     $s3, buf         # ponteiro base
    addiu  $t0, $zero, 0

main_loop:
    j     L1

L1:
    lw    $t1, 0($s3)
    addiu $t0, $t0, 1
    sw    $t0, 0($s3)
    j     L2

L2:
    lw    $t2, 4($s3)
    addiu $t1, $t1, 2
    sw    $t1, 4($s3)
    j     L3

L3:
    lw    $t3, 8($s3)
    addiu $t2, $t2, 3
    sw    $t2, 8($s3)
    j     L4

L4:
    lw    $t4, 12($s3)
    addiu $t3, $t3, 4
    sw    $t3, 12($s3)
    j     L5

# loop interno só pra gerar tempo e mais acessos
L5:
    li    $t7, 5
inner_loop:
    lw    $t5, 16($s3)
    addiu $t5, $t5, 1
    sw    $t5, 16($s3)
    addiu $t7, $t7, -1
    bne   $t7, $zero, inner_loop

    # continua sequência de saltos
    lw    $t6, 20($s3)
    addiu $t4, $t4, 5
    sw    $t4, 20($s3)

    addiu $s3, $s3, 24      # avança na memória
    addiu $t9, $t9, -1
    bne   $t9, $zero, main_loop

END:
    # fim natural — CPU gera INVALID INSTRUCTION
