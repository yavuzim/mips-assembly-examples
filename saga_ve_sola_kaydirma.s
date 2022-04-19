
#Sablon

.data

.text

main:

# Sola kaydırma (sll)

li $t0,3
sll $t1,$t0,2 # $t0 registerindeki 3 sayısını 2 bit sola kaydır (2 defa 2 ile çarp, 3*2=6 6*2=12 sonuç=12)

# Sağa kaydırma (srl)

li $t2,48 
srl $t3,$t2,3 # $t2 registerindeki 48 sayısını 3 bit sağa kaydır (3 defa 2'ye böl', 48/2=24 24/2=12 12/2=6 sonuç=6)

# Küçük büyük karşılaştırma (slt)

li $t4,18
li $t5,22
slt $t6,$t4,$t5 # $t4 registerindeki sayı ,$t5 registerindeki sayıdan küçük olduğu için $t6 registerini 1 yapar.

li $s0,6
li $s1,5
slt $s2,$s0,$s1 # $s0 registerindeki sayı ,$s1 registerindeki sayıdan küçük olmadığı için $s2 registerini 0 yapar.

#Sonlandırma
li $v0,10
syscall