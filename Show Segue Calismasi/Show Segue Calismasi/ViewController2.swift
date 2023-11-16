//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by sedef tok on 11.10.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func geri(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goto3(_ sender: Any) {
        
        /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidelecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        navigationController?.pushViewController(gidelecekViewController, animated: true)*/
    }
    }
    

