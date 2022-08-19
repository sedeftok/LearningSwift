import UIKit

// ornek 1

var sayi = 10

// ornek 2 - başlangıç değeri atamadan
var numara:Int?

numara = 20

print(numara!)

// ornek 3 - tek satırda birden fazla tanımlama
 var sayi1 = 20 ,sayi2 = 23, sayi3 = 12, kelime = "mod"

print(sayi1)

// ornek 4 - sonradan değişkenin değerini değişme
var  fiyat = 12.99

print(fiyat)

fiyat = 5.99

print(fiyat)

// ornek 5 - değişkenler ile işlem yaptıktan sonra tekrar bir değişkene aktarılabilir.

var s1 = 45
var s2 = 43

var toplam = s1 + s2

print(toplam)

//ornek 6 - type safety - tür güvenliği

var sonuc = 100
 print(sonuc)

//sonuc = "sfdsf" - türleri farklı olduğu için hata verir ilk girdiğimiz int ise yine int girmeliyiz biz string ifade girdik

