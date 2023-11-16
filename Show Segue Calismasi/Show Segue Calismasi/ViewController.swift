//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by sedef tok on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func goto2(_ sender: Any) {
        
        /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidelecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidelecekViewController, animated: true)*/
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gofrom1to2"{
            print("geçiş :1 den 2 ye geçiş yapıldı")
        }
    }
}

