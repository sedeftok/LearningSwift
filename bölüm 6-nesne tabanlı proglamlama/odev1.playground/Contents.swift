import UIKit

class odev1 {
    func donusturucu (tc:Double)->Double{
        let tf = (tc * 1.8) + 32
        return tf
    }
   
}


var a = odev1()
var sonuc = a.donusturucu(tc: 30)
print("\(sonuc) fahrenheit")


class odev2 {
    func dikdortgenCevresiHesabi( kısaKenar:Int,uzunKenar:Int){
        let sonuc1 = (kısaKenar + uzunKenar)*2
        print("çevre: \(sonuc1)")
        
    }
}
var s = odev2()
s.dikdortgenCevresiHesabi(kısaKenar: 57, uzunKenar: 8)


class odev3 {
    func faktoriyel(sayi:Int)->Int{
        var sonuc = 1
        for s in 1...sayi{
            sonuc = sonuc * s
           
        }
        return sonuc
    }
}
let veri = odev3()
let sonuc2 = veri.faktoriyel(sayi: 7)
print(sonuc2)







class odev6{
    func maasHesabi(gun:Int)->Int{
        var maas = 0
        let calismasaati = gun*8
        
        if calismasaati > 160{
            let mesaifaslasi = calismasaati - 160
             maas = 1600 + mesaifaslasi * 20
        }
        else{
             maas = calismasaati*10
        }
        return maas
    }
   
}
var c = odev6()
var gungiris = c.maasHesabi(gun: 30)
print("maaş:\(gungiris)")





class odev7{
    func paketfiyati(kullanılanint:Int)->Int{
        var fatura = 0
        
        if kullanılanint>50{
            fatura = 100 + (kullanılanint-50)*4
            }
        else{
            fatura = 100
        }
        return fatura
    }
}
var o7 = odev7()
var kacgb = o7.paketfiyati(kullanılanint: 60)
print(kacgb)
