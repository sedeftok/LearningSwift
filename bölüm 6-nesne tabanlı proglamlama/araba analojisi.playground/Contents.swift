import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){ // method
        calisiyorMu = true
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        hiz! = kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    func bilgiAl(){
        print("Renk         :\(renk!)")
        print("Hız          :\(hiz!)")
        print("Çalışıyor mu :\(calisiyorMu!)")
    }
}

var bmw = Araba()

bmw.hiz = 180
bmw.renk = "kırmızı"
