//
//  ViewController.swift
//  Tool Bar Çalışması
//
//  Created by sedef tok on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var etiket: UILabel!
    
    @IBAction func geributton(_ sender: Any) {
        etiket.text = "geri"
    }
    
    
    
    
    @IBAction func oynatbutton(_ sender: Any) {
        etiket.text = "oynat"
    }
    
    
    
    
    @IBAction func gorselbutton(_ sender: Any) {
        etiket.text = "home"
    }
    
    
}

