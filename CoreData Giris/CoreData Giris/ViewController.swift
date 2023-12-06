//
//  ViewController.swift
//  CoreData Giris
//
//  Created by sedef tok on 6.12.2023.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate // her yerden erişmek için buraya yazdık

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    var kisilerListesi = [Kisiler]()

    override func viewDidLoad() {
        super.viewDidLoad()
       
       // veriKaydi()
        
        veriOkuma()
        
       // veriSil()
        
        veriGuncelle()
        
        veriOkuma()
        
        
        
    }

    func veriKaydi() {
        
        let kisi = Kisiler(context: context)
        
        kisi.kisi_ad = "Sedef"
        kisi.kisi_yas = 21
        
        appDelegate.saveContext() // verileri kaydettik
    }
    
    func veriOkuma(){
        
        do{
            kisilerListesi = try context.fetch(Kisiler.fetchRequest())//?
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListesi{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
        
    }
    func veriSil() {
        
        let kisi = kisilerListesi[1]
        
        context.delete(kisi)
        
        appDelegate.saveContext()
    }
    
    func veriGuncelle(){
        let kisi = kisilerListesi[1]
        
        kisi.kisi_ad = "Ece"
        kisi.kisi_yas = 20
        
        appDelegate.saveContext()
    }
    
    func veriOkumaSiralama(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: true) // true küçükten büyüğe, false ise büyükten küçüğe sıralama yapar
        
        fetchRequest.sortDescriptors = [sort]
        
        do{
            kisilerListesi = try context.fetch(fetchRequest)
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListesi{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
        
    }
    
    func veriOkumaFiltreleme(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
       
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i and kisi_ad == %@", 21, "Sedef")
    
        do{
            kisilerListesi = try context.fetch(fetchRequest)
            
        }catch{
            print("Veri okurken hata oluştu")
        }
        
        for k in kisilerListesi{
            print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
        }
        
    }
    
}

