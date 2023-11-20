//
//  ViewController.swift
//  view controller calismasi
//
//  Created by sedef tok on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    
    @IBOutlet var etiketler: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        etiket.text = " MERHABA"
        
        etiketler[0].text = "hey1"
    }

    @IBAction func tiklan(_ sender: Any) {
       
        etiket.text = "BUTON TIKLANDI"
        
        etiketler[0].text = "hey10"
    
        
    }
    
}

