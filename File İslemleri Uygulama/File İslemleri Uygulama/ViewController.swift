//
//  ViewController.swift
//  File İslemleri Uygulama
//
//  Created by sedef tok on 2.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldGirdi: UITextField!
    
    
    @IBOutlet weak var resimTutucu: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func yaz(_ sender: Any) {
        
        let mesaj = textfieldGirdi.text! // mesaj alındı
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first { // kayıt yapılacak alan seçildi
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt") // dosyayı ekledik
            
            do {
                try mesaj.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8) // veriyi kaydettik
                
                textfieldGirdi.text = ""
            }catch{
                print("Dosya yazılırken hata oluştu")
            }
        }
    }
    
    
    @IBAction func oku(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do {
                textfieldGirdi.text = try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
               
            }catch{
                print("Dosya okurken hata oluştu")
            }
        }
    }
     
    
    @IBAction func sil(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt") // dosyayı ekledik
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
                
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textfieldGirdi.text = ""
                   
                }catch{
                    print("Dosya silerken hata oluştu")
                }
                
            }
            
           
        }
    }
    
    
    @IBAction func resimKaydet(_ sender: Any) {
        
        
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            let resim = UIImage(named: "Image")
            
            do {
                try resim!.pngData()?.write(to: dosyaYolu)
            }catch{
                print("Resim yazılırken hata oluştu")
            }
        }
    }
    
    
    @IBAction func resimGoster(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            self.resimTutucu.image = UIImage(contentsOfFile: dosyaYolu.path)
        }
        
    }
    
    
    @IBAction func resimSil(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask ).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
                
                do {
                    try FileManager.default.removeItem(at: dosyaYolu)
                    
                   
                }catch{
                    print("Resim silerken hata oluştu")
                }
                
            }
            
           
        }
    }
    
}

