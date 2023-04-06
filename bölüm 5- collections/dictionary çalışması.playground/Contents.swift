import UIKit

// Dictionary
// boş dctionary [:] ile temsil edilir
// javadaki hash map yapısının aynısıdır
// key ve value ilişkisi vardır

var dic1 = [Int:String]() // [key:value]
var dic2 = [3.14:"pi",2.71:"e"]
var dic3:[Int:String] = [1:"bir",2:"iki",3:"üç"]

// veri ekleme
var iller = [Int:String]()

iller[16] = "bursa"
iller[34] = "istanbul"
iller[6] = "ankara"

print(iller)

// veri güncelleme

iller[16] = "güncel bursa"

print(iller)

// döngü ilişkisi - veri çekme

var iller2 = [16:"bursa",34:"istanbul",6:"ankara"]
 // verileri döngü ile alma
for (anahtar,deger) in iller2 {
    print("plaka kodu : \(anahtar), il ismi: \(deger)")
}

// veri silme

iller.removeValue(forKey: 6)
print(iller)

var dersler = ["matematik", "kimya", "biyoloji"]
var notlar = [100,86,95]
var dersNotlari = Dictionary(uniqueKeysWithValues: zip(dersler,notlar)) // iki diziyi birleştirme
print(dersNotlari)

var urunFiyatlari:[Double:String] = [15.99:"kitap",59.99:"tişört",239.99:"saat"]
var fiyatlar = [Double](urunFiyatlari.keys) // dictionary i iki farklı diziye ayırma
var urunler = [String](urunFiyatlari.values)
print(fiyatlar)
print(urunler)

