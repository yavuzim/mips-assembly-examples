
#Sablon

.data
deger: .asciiz "Bilgisayar Muhendisligi"
.text

# bne   ->      İki register'daki verileri karşılaştırır eğer veriler eşit değilse istenen yere dallanır.

main:
    li      $t0,0x10010000
    li      $t1,0x73
    li      $t2,0   # Sayaç. Döngünün kaç kere döndüğünü tutacak.

dongu:
    lb      $t4,0($t0)
    add     $t0,$t0,1
    addi    $t2,1           
    bne     $t4,$t1,dongu   # $t4 ve $t1 register'lerindeki veriler eşit olmadığı sürece döngüye dallanır. Eşitse döngüden çıkar.

#Sonlandırma
li $v0,10
syscall