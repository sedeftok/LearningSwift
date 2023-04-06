import UIKit

var sayilar = [2,645,98,43,89,34,678,534,78,45,7,43]

var ciftler = [Int]()
var tekler = [Int]()

for s in sayilar {
    let sonuc = s % 2
    
    if sonuc == 0 {
        ciftler.append(s)
        
    }
    if sonuc == 1{
        tekler.append(s)
    }
    
}
  print("tek sayılar \(tekler)")
  print("çift sayılar \(ciftler)")
