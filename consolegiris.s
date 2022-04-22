
#Sablon

.data
    AltSatir:       .asciiz     "\n"
    IntMesaj:       .asciiz     "Integer Mesaj Giriniz : "
    FloatMesaj:     .asciiz     "Float Mesaj Giriniz : "
    DoubleMesaj:    .asciiz     "Double Mesaj Giriniz : "
    TextMesaj:      .asciiz     "Text Mesaj Giriniz : "
    GirilenDeger:   .asciiz     "Girilen Değer : "
    AlinanText:     .space      50
#----------------------------------------------------------------------------------------------------------------------------
.text

#################################################################################################################################

#                                   Konsola Yazma               Konsoldan Değer Alma
#       Integer Veri                       1                                5
#       Float Veri                         2                                6
#       Double Veri                        3                                7
#       String Veri                        4                                8

#################################################################################################################################

main:
   li       $v0,4            # Konsola String veri yazdırıyoruz.
   la       $a0,TextMesaj    # Yazdığımız veri data kısmında TextMesaj'a denke gelen String değer.
   syscall     

   li       $v0,5            # Konsoldan Integer bir değer okuyoruz.
   syscall
   move     $t0,$v0          # Konsoldan Okunan Integer değeri $to registerine atıyoruz

   li       $v0,4            # Konsola String veri yazdırıyoruz.
   la       $a0,GirilenDeger # Yazdığımız veri data kısmında GirilenDeger'a denke gelen String değer.
   syscall

   li       $v0,1           # Klavyeden konsola girdiğimiz değeri konsola tekrardan yazdırmak istediğimizde. $v0 registerine 1 atıyoruz.
   move     $a0,$t0         # Yukarıda $to registerine atadığımız konsoldaki integer değerini konsola tekrardan yazıyoruz.
   syscall

   # Ekran çıktısı 
   # Text Mesaj Giriniz : 31
   # Girilen Değer :  31
   
bitir:
#----------------------------------------------------------------------------------------------------------------------------
li $v0,10
syscall

