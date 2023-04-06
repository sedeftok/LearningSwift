import UIKit

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev{
    var garajvarMi:Bool?
    
    init(garajVarMi:Bool, pencereSayisi:Int){
        self.garajvarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 6, pencereSayisi: 30)
var bogazdaVilla = Villa(garajVarMi: true, pencereSayisi: 11)

print(topkapiSarayi.kuleSayisi!)

print("----------------------------------------")

var saray = Saray(kuleSayisi:3, pencereSayisi:9)
    
if ev1 is Saray {
    print("Saraydır")
}
else{
    print("Saray değildir")
}

//Upcasting
var ev1:Ev = Saray(kuleSayisi: 67, pencereSayisi: 6745) as Ev

//Downcasting
var ev2 = Ev(pencereSayisi: 4)
var saray2:Saray = ev2 as! Saray
//as? var bide onda :Saray? yapmak zorundayız
