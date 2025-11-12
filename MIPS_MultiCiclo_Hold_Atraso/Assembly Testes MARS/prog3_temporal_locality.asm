# prog3_temporal_locality_simple.asm
# Demonstra localidade temporal — acessa o mesmo dado várias vezes

.data
val:   .word 5
soma:  .word 0

.text
.globl main
main:
    la    $t0, val      # endereço de val
    la    $t1, soma     # endereço de soma
    li    $t2, 0        # acumulador
    li    $t3, 100       # número de acessos repetidos (ajusta conforme precisar)

loop:
    lw    $t4, 0($t0)   # lê o mesmo dado (val)
    addu  $t2, $t2, $t4 # soma
    addiu $t3, $t3, -1  # decrementa contador
    bne   $t3, $zero, loop

    sw    $t2, 0($t1)   # salva resultado final em soma

    # fim natural — CPU vai gerar INVALID INSTRUCTION
