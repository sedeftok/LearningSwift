import UIKit

    // sayısaldan sayısala

var i:Int = 42
var d:Double = 21.312
var f:Float = 7.54

var sonuc1:Int = Int(d)
var sonuc2:Double = Double(i)

print(sonuc1)
print(sonuc2)

// sayısaldan metine

var str1 = String(i)
var str2 = String(d)
var str3 = String(f)

print(str1)
print(str2)
print(str3)

// metinden sayısala
// 23 20t +243 s230

var yazi1 = "27"

if let sayi1 = Int(yazi1) {
    print(sayi1)
}

var yazi2 = "435.65"

if let sayi2 = Double(yazi2){
    print(yazi2)
}




