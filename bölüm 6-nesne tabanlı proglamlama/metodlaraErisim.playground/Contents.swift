import UIKit

class Matematik {
    func topla(sayi1:Int,sayi2:Int){
        let toplam = sayi1 + sayi2
        print("Toplam : \(toplam)")
    }
    func cikar(sayi1:Double, sayi2:Double)->Double{
        return sayi1 - sayi2
    }
    func carp(sayi1:Int, sayi2:Int){
        print("Çarpım: \(sayi1 * sayi2)")
    }
    func bol(sayi1:Int, sayi2:Int)->Int{
        let sonuc = sayi1 / sayi2
        return sonuc
    }
}
  var s = Matematik()
s.topla(sayi1: 73549, sayi2: 7989484)
var t = s.cikar(sayi1: 758.687, sayi2: 9547.56) // return olunca direkt s. *** diyemiyorum anlamadım neden
print("Çıkarma: \(t)")
s.carp(sayi1: 12345, sayi2: 678910)
var e = s.bol(sayi1: 65, sayi2: 5)
print("Bölüm: \(e)")

