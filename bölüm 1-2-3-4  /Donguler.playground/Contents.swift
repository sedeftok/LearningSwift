import UIKit
    // 3 6 arasında
for s in 3...6 {
    print(s)

}

var sayac = 3

while sayac < 7 {
    print(sayac)
    sayac += 1
}
        // 0 ve 8 arasında +2

for i in stride(from: 0, through: 8, by: 2){
    print(i)
    
}


var sayac1 = 0

while sayac1 < 9  {
    print(sayac1)
    sayac1 += 2
}

// ornek

var isim = "Ahsen"
var son = 100

/*for i in 1...son {
    print("\(i). \(isim)")
} */


var harfSayisi = isim.count // ismin kaç harfli olduğunu bulmak için kullanılır
for i in 1...harfSayisi { // üst satır yazılmadan 1...isim.count da yazılabilirdi
    print("\(i). \(isim)")
}


// ornek(while)-Veri İşleme

var veri = 5

while veri > 0 {
    print("\(veri). veri")
    veri -= 1

}

