import UIKit

class kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}

class yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}
class filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:kategoriler?
    var yonetmen:yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:kategoriler,yonetmen:yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
        
        
    }
    
}

var k1 = kategoriler(kategori_id: 1,kategori_ad:"Dram")
var k2 = kategoriler(kategori_id: 2,kategori_ad:"Komedi")
var k3 = kategoriler(kategori_id: 3,kategori_ad:"Bilim Kurgu")

var y1 = yonetmenler(yonetmen_id: 1,yonetmen_ad:"Nuri Bilge Ceylan")
var y2 = yonetmenler(yonetmen_id: 2,yonetmen_ad:"Quetin Tarantino")
var y3 = yonetmenler(yonetmen_id: 3,yonetmen_ad:"Christopher Nolan")

var f1 = filmler(film_id: 1, film_ad:"Django", film_yil: 2013, kategori: k1, yonetmen: y2)
var f2 = filmler(film_id: 2, film_ad:"Inception", film_yil: 2006, kategori: k3, yonetmen: y3)
 
print("film id: \(f1.film_id!)")
