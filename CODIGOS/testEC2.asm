.text
.globl main

main:
    lw $a0, 100($zero)   # Cargar A en $a0
    lw $a1, 101($zero)   # Cargar B en $a1

    or  $s0, $a0, $a1    # $s0 = $a0 | $a1
    sub $s1, $a0, $a1    # $s1 = $a0 - $a1

    sw $s0, 102($zero)   # Guardar resultado OR en mem[102]
    sw $s1, 103($zero)   # Guardar resultado SUB en mem[103]

loop:
    j loop               # Bucle infinito

.data
a: .word 240
b: .word  15
