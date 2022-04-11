
#Sablon

.data

.text

main:

/*

and (ve) komutu         -> 1^1=1    , 1^0=0     , 0^0=0
or  (veya) komutu       -> 1v1=1    , 1v0=1     , 0v0=0
nor (veya değil) komutu -> (1v1)'=0 , (1v0)'=0  , (0v0)'=1

*/

# and
li      $t0,23
li      $t1,17
and     $t2,$t0,$t1
li      $t3,31
li      $t4,29
and     $t5,$t3,$t4
andi    $t6,$t3,7 #andi, sabit sayı ile ve işlemi yapar.
# ***********************************************************
# or
li      $s0,66
li      $s1,41
or      $s2,$s0,$s1
ori     $s3,$s2,7
# ***********************************************************
# nor
li      $s5,65535
nor     $s6,$s5,0

#Sonlandırma
li $v0,10
syscall