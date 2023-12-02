//
//  ViewController.swift
//  UserDefault Login Uygulamasi
//
//  Created by sedef tok on 2.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    
    
    @IBOutlet weak var textfieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka =  d.string(forKey: "kullaniciAdi") ?? "bos"
        let s =  d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" {
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
    }


    @IBAction func girisYap(_ sender: Any) {
        
        if let ka = textfieldKullaniciAdi.text , let s = textfieldSifre.text {
            
            if ka == "admin" && s == "123456" { // verileri kontrol ediyoruz
                
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre") // doğru ise kayıt yapmak için
                
                performSegue(withIdentifier: "girisToanasayfa", sender: nil) // doğru girişten sonra diğer sayfaya geçişin gerçekleşmesi için
            }else{
                print("hatalı giriş")
            }
        }
        
        
        
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) { // sayfa ilk açıldığında
        navigationController?.isNavigationBarHidden = true // sayfa açıldığında navigation bar ın saklanması için
    }
    
    override func viewWillDisappear(_ animated: Bool) { // başka sayfaya geçiş olduğunda
        navigationController?.isNavigationBarHidden = false
    }
}

