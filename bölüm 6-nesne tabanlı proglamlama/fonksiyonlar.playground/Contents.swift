import UIKit

func selamla(){
    let sonuc = "merhaba ahmet"
    print(sonuc)
}
 selamla()

func selamla1() {
    let sonuc = "merhaba ahmet"
    return sonuc
}
var gelenVeri = selamla1()
print(gelenVeri)

func selamla2(isim:String){
    let sonuc = "merhaba \(isim)"
    print(sonuc)
}
selamla2(isim: "ahmet")
