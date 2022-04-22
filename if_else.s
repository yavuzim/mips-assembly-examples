
#Sablon

.data
    AltSatir:    .asciiz "\n"
    mesaj1:      .asciiz "Sayı Giriniz : "
    mesaj2:      .asciiz "Tutulan Sayı : "
#-------------------------------------------------------------------
.text
##########################################################################################
# Problem :
# Klavyeden girilen sayı 0'a eşitse, $s0 registerindeki default sayıyı 2 ile çarp.
# Klavyeden girilen sayı 0'dan küçükse, $s0 registerindeki default sayıyı 1 azalt.
# Klavyeden girilen sayı 0'den büyükse, $s0 registerindeki default sayıyı 1 ile topla.
##########################################################################################
main:
   li        $s0,20          # $s0 registerine 20 değerini yüklüyoruz.
   
   li        $v0,4          # Konsola String veri yazdırıyouz. 
   la        $a0,mesaj1     # Yazılan veri, data'daki mesaj1 etiketinin tuttuğu String ifadedir.
   syscall

   li       $v0,5           # Konsola klavyden girilen integer değerini okuyoruz.
   syscall  
   move     $t0,$v0         # Okunan integer değerini $t0 registerine yüklüyoruz.

   beq      $t0,0,DBL       # $t0 registerindeki veri 0'a eşitse DBL fonksiyonuna dallan.
   slt      $t1,$t0,$zero   # $t0 registerindeki integer değer $zero registerindeki 0 değerinden küçükse $t1 1 olsun, aksi halde $t1 0 olsun.
   beq      $t1,0,INC       # $t1 registeri 0'a eşitse INC fonksiyonuna dallan.
   beq      $t0,1, DEC      # a0 registerindeki veri 1'e eşitse DEC fonksiyonuna

############################################################
DEC:
    addi    $s0,$s0,-1      # $s0 registeindeki veriyi -1 ile topla.
    j       PRINT           # j komutuyla PRINT fonksiyonuna dallanıyoruz.
############################################################
DBL:
    li      $t2,2           # $t2 registerine 2 değerini yükledik.
    mult    $s0,$t2         # $s0 registerindeki sayıyla $t2 registerindeki sayıyı çarpıyoruz.
    mflo    $s0             # çarpımın sonucundaki en değerliksiz 16 bit'i $s0 registerine yüklüyoruz.
    j       PRINT           # j komutuyla PRINT fonksiyonuna dallanıyoruz.

############################################################
INC:
    addi    $s0,$s0,1      # $s0 registerindeki veriyle 1'i topla $s0 registerine at. 
    j       PRINT          # j komutuyla PRINT fonksiyonuna dallan.
############################################################
PRINT:
    li      $v0,4          # Konsola String değer yazdırıyoruz.
    la      $a0,mesaj2     # Yazılan veri, data'daki mesaj2 etiketinin tuttuğu String ifadedir.
    syscall
    li      $v0,1          # Konsola integer değer yazdırıyoruz.
    move    $a0,$s0        # Yazdırdığımız integer değeri $s0 registerindeki değerdir.
    syscall
    j       bitir          # j komutuyla bitir fonksiyonuna dallanıyoruz ve programın sonsuz döngüye girmesini engelliyoruz.

############################################################
bitir:
#-------------------------------------------------------------------
li $v0,10
syscall