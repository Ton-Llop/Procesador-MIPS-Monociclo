.text
.globl main

main:
    lw $a0, 0($zero)       # Cargar a = 240
    lw $a1, 1($zero)       # Cargar b = 15
    lw $t1, 2($zero)       # Cargar -1

    and $t0, $a0, $a1      # $t0 = $a0 & $a1
    sub $s0, $t1, $t0      # $s0 = -1 - ($a0 & $a1) → simulación de NAND

    sw $s0, 3($zero)       # Guardar resultado en dirección 3

loop:
    j loop                 # Bucle infinito para inspección
.data
.word 240       # Dirección 0 → a
.word 15        # Dirección 1 → b
.word -1        # Dirección 2 → menos_uno
.word 0         # Dirección 3 → res (resultado esperado: 255)
