
#Sablon

.data

etiket1:     .asciiz     "Bilgisayar Muhendisligi"
etiket2:     .word       0x7aab8bcd
.text

main:

# lh    ->      Data Memory'den 2 byte'lik veri okur.
# lh komutu data memory'de veriyi en değerliksiz bit'ten okumaya başlar ve ilk 16 bit'in en değerlikli bit'i 1 ise veriyi negatif yapar
# ve register'i 32 bite tamamlamak için başına ffff ekler.

# lhu   ->       Data Memory'den 2 byte'lik veri okur.
# lhu komutu data memory'de veriyi en değerliksiz bit'ten okumaya başlar ve ilk 16 bit'in en değerlikli bit'i 1 ise veriyi negatif yapar
# lh komutundaki gibi başa ffff eklemek yerine başını 0 yapar.

# sh    ->      Data Memory'e 2 byte'lik veri ekler.

li      $t0,0x10010018
lh      $t1,4($t0)
lhu     $t2,4($t0)



li      $s0,0x10010020
li      $s1,0xff
sh      $s1,0($s0)

sh      $s1,2($t0)

#Sonlandırma
li $v0,10
syscall