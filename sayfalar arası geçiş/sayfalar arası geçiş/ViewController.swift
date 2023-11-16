//
//  ViewController.swift
//  sayfalar arası geçiş
//
//  Created by sedef tok on 14.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        
        self.present =
    }
    
    @IBOutlet weak var girdiAlani: UITextField!
}

