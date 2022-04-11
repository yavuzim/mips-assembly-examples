
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


#Sonlandırma
li $v0,10
syscall