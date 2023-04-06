import UIKit

var sayilar = [Int]()

for _ in 1...10 { // boş değişken oluşturduk
    let rastgeleSayilar = arc4random_uniform(10) // 0 ile 9 arasında sayılardan seçecek / 100 girseydik 0 ile 99
    
    sayilar.append(Int(rastgeleSayilar))
                   
  
}

sayilar.sort() // küçükten büyüğe sıralama

print(sayilar)
