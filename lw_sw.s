
#Sablon

.data
sayi1: .word 125
.text

main:

/*

load address (la) -> Adresi istediğimiz registere atar.
load word    (lw) -> Registerlar arasında word veri transferi yapar.
store word   (sw) -> Registerdaki değeri data hafızasına ekler.

*/

la $s0,sayi1 # sayi1'in temsil ettiği adresi $s0 registirine at.
lw $t1,0($s0) # $s0'daki hafızaya git, veriyi al ve (doğrudan o adrese ulaşmak için başına sıfır konuldu) $t1 registirine yükle.

li $t2,0xffffffbc # $t2 registirine değeri yükle.
sw $t2,4($s0) # sw komutu ile $s0 adresindeki hafızaya git, veriyi al ve $t2 registirindeki veriyi 4 byte ötedeki dataya yükle.

add $s2,$zero,0x10010008 # 0x10010008 adresini $s2 registerine yükle. 
li $t3,506  # $t3 registerine 506 değerini yükle.
sw $t3,0($s2) # $t3 registerindeki veriyi $s2 adresindeki dataya yükle.

#Sonlandırma
li $v0,10
syscall