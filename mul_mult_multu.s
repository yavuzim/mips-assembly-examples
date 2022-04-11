
#Sablon

.data

.text

main:


#  mul komutu   -> Register'deki değerleri çarpar ve istenen register'e veriyi ekler.
#  mult komutu  -> Register'deki değerleri çarpar. Sonucu otomatik olarak biz getiririz.
#  mflo komutu  -> Mips'teki register'lar 32 bitlik değerler alır. Çarpılan veriler 64 bit çıkarsa en değersiz 32 bit'i alır.
#  mfhi komutu  -> Mips'teki register'lar 32 bitlik değerler alır. Çarpılan veriler 64 bit çıkarsa en değerli 32 bit'i alır.
#  multu komutu -> Pozitif sayıların çarpımını yapar.


li      $t0,25
li      $t1,3500
mul     $t2,$t0,$t1

li      $t3,1000000
li      $t4,-2000000
mult    $t3,$t4
mflo    $t5
mfhi    $t6

li      $s0,0xfffffff0
li      $s1,8
multu   $s0,$s1
mflo    $s2
mfhi    $s3


#Sonlandırma
li $v0,10
syscall