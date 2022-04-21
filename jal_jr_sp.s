
#Sablon

.data
#-------------------------------------------------------------------
.text

main:
    li      $s0,5
    li      $s1,12
    li      $t0,-5
    li      $t1,10
    jal     carp    # jal komutu kullanıldığında alt program proseduru çağırmak anlamına gelir.
    j       bitir   #  # j komutu koşulsuz dallanma yapar. bitir fonksiyonuna giderek programı bitirir (sonsuz döngüye girmesini engeller)

############################################################
carp:
    addi    $sp,$sp,-8  # $sp yukarı çekildi. İki tane veri geleceği için 8 byte'lik yer açtık
    sw      $s0,0($sp)  # $sp registerine $s0 registerindeki veriyi aktarır.
    sw      $s1,4($sp)  # $sp registerine $s1 registerindeki veriyi aktarır.

    mul     $s0,$t0,$t1     # $to ve $t1 registerlerindeki verileri çarpar
    li      $s1,0x10010000  # $s1 registerine 0x10010000 adresini atar.
    sw      $s0,0($s1)      # $s1 adresine $s0 registerindeki değeri atar.

    lw      $s0,0($sp)     # $sp adresindeki veriyi okur $s0 registerine atar.  
    lw      $s1,4($sp)    # $sp adresindeki veriyi okur $s1 registerine atar.  
    addi    $sp,$sp,8      # stak'i tekrardan boşaltır.
    jr      $ra     # alt fonksiyonlar jr komutu ile bitmektedir. jr komutu = return. Döneceği yer $ra registirindeki hangi değer atılmışsa o adrese döner.

############################################################
bitir:
#-------------------------------------------------------------------
li $v0,10
syscall