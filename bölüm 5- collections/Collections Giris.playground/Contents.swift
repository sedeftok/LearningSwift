import UIKit

/*
 1.array(dizi)
 2.set
 3.dictionary
 
 
 ARRAY []
 
 Aynı türden verileri bir arada tutar
 İndeks numaraları 0 dan başlar
 Array tanımlarken türü belirtilmelidir
 */
var meyveler:[String] = ["çilek","muz","kiraz"]

var dizi = [Int]() //boş bir dizi *!
var dizi2 = [1,2,3] // baştan değer verilmiş
var dizi3:[Float] = [20.0,45.7,64.7] // baştan değer verilmiş
var dizi4 = [Int](repeating: 0, count: 3) //varsayılan değerleri otomatik veren yapı, 3 adet 0 değeri oluşturur // [0,0,0]

var str1 = meyveler[2] // kiraz
print(meyveler[1])// muz

// diziye yeni veri ekleme

meyveler.append("karpuz") // var olan verilerin sonuna eklenir, append ilave demek !en çok kullanılan *!
meyveler += ["mandalina"] // var olan verilerin sonuna eklenir
meyveler[2] = "ananas" //mevcut yerin üzerine veri ekleme, kiraz yerine ananas
print(meyveler)

print("         ")

for meyve in meyveler {
    print(meyve)
}

for (index,meyve) in meyveler.enumerated() { // numaralama *!
    print("index \(index) eleman \(meyve)")
}

meyveler.insert("portakal", at: 3) // 3. indexe portakal ekelenir ama eleman silmez araya girer ,, ben nereye oturcam diyo yani

meyveler.count // kaç elemanlı olduğunu gösterir !önemli bu
meyveler.isEmpty // dizinin dolu olup olmadığını gösterir true false
meyveler.first // ilk elemanı gösterir
meyveler.last // son elemanı gösterir

meyveler.contains("kiraz") // dizinin içeriğinde var mı yok mu true false *!

meyveler.reverse() // tersten sıralar

meyveler.max() // harf olarak en büyük ve en küçük elemanları vermektedir
meyveler.min()

meyveler.sort() // sıralama yapar, string ise harflere göre int ise sayılara göre

meyveler.remove(at: 2) // yazılan elemanı siler
print(meyveler)

meyveler.removeAll() // hepsini sil *! ( en çok kullanılan demek bu işaret)
