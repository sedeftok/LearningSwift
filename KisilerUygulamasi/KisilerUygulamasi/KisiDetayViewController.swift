//
//  KisiDetayViewController.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 7.12.2023.
//

import UIKit

class KisiDetayViewController: UIViewController {

    
    @IBOutlet weak var kisiAdLabel: UILabel!
    
    
    @IBOutlet weak var kisiNoLabel: UILabel!
    
    var kisi:Kisiler?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi{
            kisiAdLabel.text = k.kisi_ad
            kisiNoLabel.text = k.kisi_no
        }
    }
    

    

}
