//
//  KisiGuncelleViewController.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 7.12.2023.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    
    
    @IBOutlet weak var kisiAdTextfield: UITextField!
    
    
    @IBOutlet weak var kisiNoTextfield: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiNoTextfield.text = k.kisi_no
            kisiAdTextfield.text = k.kisi_ad
        }
        
    }
    
    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi, let ad = kisiAdTextfield.text, let no = kisiNoTextfield.text {
            
            k.kisi_ad = ad
            k.kisi_no = no
            
            appDelegate.saveContext()
        }
    }
    
}
