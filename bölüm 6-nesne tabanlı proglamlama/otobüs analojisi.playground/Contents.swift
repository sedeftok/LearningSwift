import UIKit

class otobus {
    var kapasite:Int?
    var nereden:String?
    var nereye:String?
    var mevcutYolcu:Int?
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    func bilgiAl(){
        print("kapasite    : \(kapasite!)")
        print("nereden     : \(nereden!)")
        print("nereye      : \(nereye!)")
        print("mevcutYolcu : \(mevcutYolcu!)")
    }
    if (kapasite > 50){
        print("otobüs doldu")
    
    

    
    
}
var kamilKoc = otobus()

kamilKoc.kapasite = 50
kamilKoc.nereden = "duzce"
kamilKoc.nereye = "bolu"
kamilKoc.mevcutYolcu = 10

kamilKoc.bilgiAl()

kamilKoc.yolcuAl(yolcu: 5)
kamilKoc.bilgiAl()

kamilKoc.yolcuIndir(yolcu: 5)
kamilKoc.bilgiAl()

kamilKoc.yolcuAl(yolcu: 50)
kamilKoc.bilgiAl()
