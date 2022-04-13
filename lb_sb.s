
#Sablon

.data

etiket1:     .asciiz     "Bilgisayar Muhendisligi"

.text

main:

# lb    ->      Data Memory'den 1 byte veri okur.
# sb    ->      1 byte'lik veriyi Data Memory'e yükler.

#lb
li      $t0,0x10010004
lb      $t1,0($t0)
lb      $t2,1($t0)
lb      $t3,2($t0)
lb      $t3,3($t0)

#sb
li      $s0,0x10010024
li      $s1,0x173 # 173 sayısı 1 byte'den büyüktür. Sadece 1 byte'lik kısmını yükler. 1 byte'lik kısmı 73'tür
sb      $s1,4($s0)
   

#Sonlandırma
li $v0,10
syscall