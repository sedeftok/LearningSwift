import UIKit

protocol Protocol1 {
    var degisken:Int {get set}
    
    func metod1()
    func metod2()-> String
}

class ClassA:Protocol1 {
    var degisken = 10
    
    func metod1(){
        print("protocol Merhaba")
    }
    func metod2()-> String {
        return "protocol Çalışması"
    }
}

var a = ClassA()

print(a.degisken)

a.metod1()

print(a.metod2())




protocol Squeezable {
    func howToSqueez()
}
protocol Eatable {
    func howToEat()
}

class Aslan {
    
}

class Tavuk:Eatable {
    func howToEat() {
        print("fırında kızart")
    }
}

class Elma:Eatable,Squeezable {
    func howToEat(){
        print("dilimle ve ye")
    }
    func howToSqueez(){
        print("meyve sıkacağını kullan")
    }
}

class AmasyaElmasi:Elma {
    override func howToEat() {
        print("yıka ve ye")
    }
}

var aslan = Aslan()
var amasyaElmasi:Elma = AmasyaElmasi()
var davuk:Eatable = Tavuk()
var elma = Elma()

var nesneler = [davuk,amasyaElmasi,aslan,elma] as [Any]

for nesne in nesneler {
    
    if nesne is Eatable {
        (nesne as! Eatable).howToEat()
    }
    if nesne is Squeezable {
        (nesne as! Squeezable).howToSqueez()
    }
}

