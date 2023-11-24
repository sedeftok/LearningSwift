//
//  ViewController.swift
//  Kod ile Segue Geçişi
//
//  Created by sedef tok on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
        
        let nesne = Kisiler(kisiId: 222, kisiAd: "ahmet")
        
       performSegue(withIdentifier: "gofrom1to2", sender: nesne)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let gelenVeri = sender as? Kisiler
        
        print("gelen veri:\(gelenVeri!.kisiId!) \(gelenVeri!.kisiAd!)")
        
        print("1 den 2 ye geçiş")
    }
    
    
    
    
    
    
    
    
}

