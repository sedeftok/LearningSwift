//
//  AnasayfaVC.swift
//  UserDefault Login Uygulamasi
//
//  Created by sedef tok on 2.12.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true // sayfadaki back kısmını sildik
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text =  ka
    }
    

    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1) // ana ekrana dönüş için
    }
    

}
