import UIKit

var dersler = [String]()
var notlar = [Int]()

dersler.append("tarih")
notlar.append(85)

dersler.append("matematik")
notlar.append(100)

dersler.append("fizik")
notlar.append(40)

dersler.append("ingilizce")
notlar.append(100)

var toplam = 0

for i in 0...(dersler.count-1){ // notlar 0 1 2 diye sıralanır direkt 0...2 yazmak yerine daha dinamik olması için ders sayısının bi eksiği şeklinde yazdım (notlarla sayıları aynı norlar.count-1 de oalbilridi
    
    print("\(dersler[i]) = \(notlar[i])")
    toplam += notlar[i]
}
print("***************************")

print("not ortalaması = \(toplam/notlar.count)")

