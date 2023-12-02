//
//  ViewController.swift
//  UserDefault Sayac Uygulamasi
//
//  Created by sedef tok on 2.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelSayac: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac") // kayıt
        
        labelSayac.text = "sayac: \(sayac)"
    }


}

