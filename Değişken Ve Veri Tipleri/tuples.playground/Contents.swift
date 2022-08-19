import UIKit

// TUPLES
// farklı türden verileri içerisinde tutabilir
var kisi = ("sedef","tok")
var ad = kisi.0 // sedef
var soyad = kisi.1 // tok


print("soyad:\(kisi.1)")


var nokta = (x:43 , y:45)
var x = nokta.x // 43
var y = nokta.y // 45
nokta.x = 100 // değeri değiştirebiliriz

var hataMesaji = (404,"not found")
var(kod,mesaji) = hataMesaji // elementler sonradan isim verilebilir

// İÇ İÇE TUPLES
var ogrenci : (Int,(Bool,String)) = (432,(true,"yasemin")) // (0,(0,1)) / 0,1,2,3,4,5...

var okulNo = ogrenci.0
var siniftaMi = ogrenci.1.0
var isim = ogrenci.1.1
 
var ogrenci2 = (111,"gamze","tok")

var ogrenciNo = ogrenci2.0
var ogrenciAdi = ogrenci2.1
var ogrenciSoyadi = ogrenci2.2

print("öğrenci numarası: \(ogrenciNo)")
print("öğrenci adı: \(ogrenciAdi)")
print("öğrenci soyadı: \(ogrenciSoyadi)")



