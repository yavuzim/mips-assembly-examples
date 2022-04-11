
#Sablon

.data

.text

main:

#Toplama İşlemi

# $t0 ve $t1 registerlerine değer yükle
addi $t0,$zero,0xb
addi $t1,$zero,10

#$t2 registerine $t0 ve $t1 registerlerindeki sayıları topla ve yükle
add $t2,$t0,$t1


li $t3,30 # $t3 registerine 30 değerini yükle
li $t4,12 # $t4 registerine 30 değerini yükle
sub $t5,$t3,$t4 # $sub komutuyla $t3 ve $t4 registerlerindeki sayıların farkını al ve $t5 registerine yükle



#Sonlandırma
li $v0,10
syscall