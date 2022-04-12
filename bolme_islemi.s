
#Sablon

.data

.text

main:
# div -> İki sayıyı böler.
# mflo -> Bölüm kısmını registire yükler.
# mfhi -> Kalan kısmı registire yükler.

li $t0,306
li $t1,0xf
div $t0,$t1
mflo $s0
mfhi $s1

li $t3,-306
li $t4,0xf
div $t0,$t1
mflo $s2
mfhi $s3


#Sonlandırma
li $v0,10
syscall