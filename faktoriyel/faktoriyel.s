
#Sablon

.data
girdi:      .asciiz "Sayi : "
sonuc:      .asciiz "Sonuc : "
.text

main:

# Klavyeden girilen sayının faktöriyelini alan program.
    
    #Console ekranı...
    li      $v0,4
    la      $a0,girdi
    syscall
    
    #Girilen degeri al.
    li      $v0,5
    syscall
    move    $a0,$v0
    li    $v1,1
    jal     fakt

    #Sonuc
    li      $v0,4
    la      $a0,sonuc
    syscall
    li      $v0,1
    move    $a0,$v1
    syscall

###########################################################
son:
#Sonlandırma
    li $v0,10
    syscall

###########################################################
fakt:
    addi    $sp,$sp,-8  # Stackta 8 byte yer açıyoruz.
    sw      $ra,4($sp)  # Geri dönüş adresimizi stackta kaydediyoruz.
    sw      $a0,0($sp)  # Sayıları stackte kaydediyoruz.

    slti    $t0,$a0,2
    bne     $t0,$zero,stackKapat
    addi    $a0,$a0,-1
    jal     fakt

stackKapat:
    lw      $ra,4($sp)
    lw      $a0,0($sp)
    addi    $sp,$sp,8
    mul     $v1,$v1,$a0
    jr      $ra


