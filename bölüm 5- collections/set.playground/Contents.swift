import UIKit

 /*
  Set
  array ile aynı özelliklre sahip
  içine eklenen veriler düzensiz ve rastgele yerleştirilir
  indeks değerlerinin takibi zordur */


 //Set Tanımlama Yöntemleri

var sayilar = Set <Int>()
var meyveler: Set = ["çilek","muz","mandalina"]
var sehirler: Set<String> = ["eskişehir","şanlıurfa","ankara"]

// set işlemleri

sayilar.insert(10) //veri ekleme
sayilar.insert(43)
sayilar.insert(45) // [43, 45, 10]

sayilar.isEmpty // boş mu dolu mu kontrol eder
sayilar.contains(10)// veri içeriyor mu kontrol eder
sayilar.sorted() // veerileri sıralama işlemi
sayilar.remove(45) //indeks numarasına göre değil verinin içeriğine göre silme işlemi [43, 10]
sayilar.removeAll() // bütün içeriği sil

// Set Verilerinin Alınması

for s in sayilar {
    print(s)
}


 


