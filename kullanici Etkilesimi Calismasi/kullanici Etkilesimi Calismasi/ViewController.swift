//
//  ViewController.swift
//  kullanici Etkilesimi Calismasi
//
//  Created by sedef tok on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var labelSonuc: UILabel!
    
    
    
    
    @IBAction func basitAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "iptal", style: .destructive){
            action in
            
            print("iptal tıklandı")
        }
    
        
        let tamamAction = UIAlertAction(title: "tamam", style: .cancel){
            action in
            
            print("tamam tıklandı")
            
        }
        alertController.addAction(iptalAction)
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
    }
    
    
    
    @IBAction func ozelAlertGoster(_ sender: Any) {
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .alert)
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "şifre"
            textfield.isSecureTextEntry = true
        }
        
        
        
        let kaydetAction = UIAlertAction(title: "kaydet", style: .cancel){
            action in
            
            print("kaydet tıklandı")
            
            let alinanEmail = ((alertController.textFields![0]) as UITextField).text!
            
            let alinanSifre = ((alertController.textFields![1]) as UITextField).text!

            self.labelSonuc.text = " Email: \(alinanEmail)- Şifre: \(alinanSifre)"
        }
    
        
        alertController.addAction(kaydetAction)
       
        
        self.present(alertController,animated: true)
    }
    
    
    
    
    @IBAction func actionSheetGoster(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "başlık", message: "mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){
            action in
            
            print("action sheet: iptal tıklandı")
        }
    
        
        let tamamAction = UIAlertAction(title: "tamam", style: .destructive){
            action in
            
            print("action sheet: tamam tıklandı")
            
        }
        alertController.addAction(iptalAction)
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
    
    
    
    }
    
    
    
}

