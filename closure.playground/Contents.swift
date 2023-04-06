import UIKit

var sayilar:[Int] = [5,665,12,23,3]

let siralama1 = sayilar.sorted(by: {sayi1,sayi2 in sayi1 < sayi2}) // hepsi aynı işlemi yapar

let siralama2 = sayilar.sorted(by:  {$0 > $1})

let siralama3 = sayilar.sorted(by:  < )


print(siralama1)
print(siralama2)
print(siralama3)
