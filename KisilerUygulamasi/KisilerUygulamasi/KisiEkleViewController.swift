//
//  KisiEkleViewController.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 7.12.2023.
//

import UIKit

class KisiEkleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet weak var kisiAdTextfield: UITextField!
    
    
    @IBOutlet weak var kisiNoTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTextfield.text, let no = kisiNoTextfield.text {
            
            let kisi = Kisiler(context: context)
            
            kisi.kisi_ad = ad
            kisi.kisi_no = no
            
            appDelegate.saveContext() // işlemleri kaydet
        }
        
       
    }
    
}
