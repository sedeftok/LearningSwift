import UIKit


struct Urun { // sınıf
    var ad:String?
    var fiyat:Double?
}

class Araba {
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun() // nesneler ile class içindeki her şeye erişebiliriz
var bmw = Araba()

laptop.ad = "macbook"
laptop.fiyat = 19999.24

print(laptop.ad!)
print(laptop.ad)
print(laptop.fiyat!)

bmw.renk = "lila"
print(bmw.renk!)

var tv = Urun()
tv.fiyat = 20000
tv.ad = "samsung"

print(tv.fiyat!)





