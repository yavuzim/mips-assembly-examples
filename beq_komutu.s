
#Sablon

.data

.text

# beq   ->      Eşit olduğunda dallanır.
# bne   ->      Eşit olmadığında dallanır.

main:
    li      $t0,15
    li      $t1,15
    j       kontrol     # j komutu koşulsuz dallanma yapar
    
carp:
    mul     $t2,$t0,$t1
    j bitir     # Sonsuz döngüye girmesini engeller

bol:
    div     $t0,$t1
    mflo    $t2
    mfhi    $t3
    j bitir     # Sonsuz döngüye girmesini engeller

kontrol:
    beq     $t0,$t1,carp # $t0 ve $t1 register'lerindeki veriler eşitse carpma etiketine git.
    bne     $t0,$t1,bol  # $t0 ve $t1 register'lerindeki veriler eşit değilse bol etiketine git.

bitir:








#Sonlandırma
li $v0,10
syscall