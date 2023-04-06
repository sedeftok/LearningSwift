import UIKit
import Security

class Deneme {
    var x = 10 // global değişken
    var y = 20 // global değişken
    
    func topla(){
        var x = 40 // local değişken
        x = x + y // burada x local y global değişkendir. local değişken global değişkene baskın gelmiş ve local değişken geçerlidir.
        print(x)
    }
    
    func carp(){
        x = x * y
        
        print(x)
    }
} // local > global


var d = Deneme()

d.topla()
d.carp()



