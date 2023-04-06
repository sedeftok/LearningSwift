import UIKit

var derslerNotlar = [String:Int]()

derslerNotlar["matematik"] = 98
derslerNotlar["moda tasarım"] = 100
derslerNotlar["resim"] = 96


var toplam = 0

for (ders,not) in derslerNotlar {
    print("\(ders): \(not)")
    toplam += not // verileri okurken aynı zamanda notları toplamak için buraya ekledik
}

print("dönem ortalaması: \(toplam/derslerNotlar.count)") // :)

