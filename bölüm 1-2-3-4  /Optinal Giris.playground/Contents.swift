import UIKit

var str: String? // str nin içi null da oalbilir veri de olabilir

if str != nil { // ! nil olmadıgından emin olunduğunda konulur
    print(str)
}else{
    print("str nil değer içeriyor")
}

//OPTINAL BİNDİNG - if let

    /*
     Bu yapı kullanılacak değişkenin veri içerip içermediğinin kontrolünü yapar
     Eğer nil değilse veya içerisine değer atanmış ise çalışır
     ! işareti koymadan otomatik olarak unwrap olur
     Sonucun nasıl geleceğini bilmediğimiz durumlarda optinal binding yapılır
     */

var str1:String?

str1 = "merhaba"
if let temp = str1 { // eğer if let yerine if var yazsaydım tekrardan temp e değer vermek istersem printten önce temp = "xxx" yazmam gerekir
    print(temp) // print(str1) yazsaydım çıktısı optinal("merhaba") olacaktı ama print(str1!) yazsaydım sadece merhaba olacaktı ünlem yerine direkt temp i kullandım
}else{
    print("str1 nil değer içeriyor")
}


var yazi = "48"

if let sayi = Int(yazi){
    print(sayi)
}else{
    print("veri sayısal ifadeden farklı bir içeriğe sahip") // örneğin var yazi = "48s" yapsaydım bu çıkardı
}
