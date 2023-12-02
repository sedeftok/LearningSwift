//
//  ViewController.swift
//  UserDefault Calismasi
//
//  Created by sedef tok on 2.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // basit verileri kalıcı olarak depolama
        
        let d = UserDefaults.standard // kullanım için kurulum
        
        d.set("Sedef", forKey: "ad") // uygulama açılır açılmaz veri alınır
        d.set(21, forKey: "yas")
        d.set(1.65, forKey: "boy")
        d.set(true, forKey: "ogrenci")
        
        let arkadasListesi = ["gamze","çağla"]
        
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirlerListesi:[String:String] = ["14":"Bolu","34":"İstanbul"]
        d.set(sehirlerListesi, forKey: "dict")
        
        // Veri Okuma
        
        let ad = d.string(forKey: "ad") ?? "isim yok" // iki soru işareti = varsayılan değer
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let ogrenci = d.bool(forKey: "ogrenci")
        
        print(ad)
        print(yas)
        print(boy)
        print(ogrenci)
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        // as? ile dönüşüm yaptık, ?? ise bir sorun çıkarsa varsayılan olarak kabul edileck değer
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["14"]!)
        
        
        
        //silme
        //d.removeObject(forKey: "ad")
       // let adx = d.string(forKey: "ad") ?? "isim yok"
        //print(adx)
        
        //güncelleme
        d.set("yeni Sedef", forKey: "ad")
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
        
    }


}

