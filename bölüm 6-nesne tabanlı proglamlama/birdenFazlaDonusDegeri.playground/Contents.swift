import UIKit

func islem(sayilar:[Int])->(toplam:Int,carpim:Int){
   var toplam = 0
   var carpim = 1
    for s in sayilar{
        toplam += s
        carpim *= s
    }
    return (toplam, carpim)
}
var dizi = [1,2,3,4,5]
let b = islem(sayilar:dizi)
print(b.toplam)
print(b.carpim)
