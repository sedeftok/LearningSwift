import UIKit

class Kisiler {
    var ad:String?
    var yas:Int?
    
    init(){
        
    }
    init(ad:String,yas:Int){
        self.ad = ad
        self.yas = yas
        
    }
}

let kisi1 = Kisiler()

kisi1.ad = "zehra"
kisi1.yas = 18

let kisi2 = Kisiler(ad: "sedef", yas: 20)

print(kisi2.ad!)
print(kisi2.yas!)

print(kisi1.ad!)
print(kisi1.yas!)
