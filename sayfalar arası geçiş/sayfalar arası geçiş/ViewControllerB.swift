//
//  ViewControllerB.swift
//  sayfalar arası geçiş
//
//  Created by sedef tok on 14.10.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBOutlet weak var etiket: UILabel!
    
    
    var mesaj:String?
    
    etiket.text = mesaj!

}
