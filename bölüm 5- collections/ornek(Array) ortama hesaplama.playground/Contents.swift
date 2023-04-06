import UIKit

var sayilar = [30,45,24,765,789,234,65,234,546,7]
 
var toplam = 0

for s in sayilar {
    toplam += s
}

print("toplam = \(toplam)")

print("ortalama = \(toplam/sayilar.count)")
