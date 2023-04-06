import UIKit

var dizi = Set <Int>()

var dizi2:Set = ["tokyo","ankara","seul","kahire","londra","washington"]

var dizi3:Set<Float> = [10.0,23.0,45.0]

// genel olarak set hakkındaki en önemli iki şry aynı veriler tekrar depolanmaz birer kez yazılır ve indeksi içerideki verileri rastgele sıralar

var meyveler:Set = ["muz","çilek","mandalina"]

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks) \(meyve)")
    
}
meyveler.insert("karpuz")
meyveler.insert("armut")

print(meyveler)

meyveler.isEmpty // bool dolu mu boş mu true false
meyveler.count // kaç elemanlı olduğunu gösterir
meyveler.first // ilk elemanı gösterir, meyveler.last yok
meyveler.contains("muz")

meyveler.max()
meyveler.min()
meyveler.removeAll() // ile tüm elemanları silebiliriz, indeks numaraları belli olmadığı için belli bir elemanı silemeyiz
