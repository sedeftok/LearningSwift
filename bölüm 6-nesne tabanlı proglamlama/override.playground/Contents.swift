import UIKit

class Hayvan {
    func sesCikar(){
        print("mevcut ses yok")
    }
}

class Memeli:Hayvan {
}

class İnek:Memeli {
    override func sesCikar(){
        print("möö")
    }
}

class Kedi:Memeli {
    override func sesCikar(){
        print("miyavv")
    }
}

var h = Hayvan()
h.sesCikar()

var k = Kedi()
k.sesCikar()

var i = İnek()
i.sesCikar()
