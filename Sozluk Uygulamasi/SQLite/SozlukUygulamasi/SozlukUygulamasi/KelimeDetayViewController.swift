//
//  KelimeDetayViewController.swift
//  SozlukUygulamasi
//
//  Created by sedef tok on 24.01.2024.
//

import UIKit

class KelimeDetayViewController: UIViewController {

    @IBOutlet weak var ingilizceLabel: UILabel!
    
    
    
    @IBOutlet weak var turkceLabel: UILabel!
    
    var kelime:Kelimeler?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kelime {
            ingilizceLabel.text = k.ingilizce
            turkceLabel.text = k.turkce
        }
    }
  
}
