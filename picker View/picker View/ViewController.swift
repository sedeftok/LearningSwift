//
//  ViewController.swift
//  picker View
//
//  Created by sedef tok on 26.10.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    
    
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var ulkeler:[String] = [String]()
    
    var secilenUlke:String?
    
    override func viewDidLoad() {         super.viewDidLoad()
        
        ulkeler = ["Türkiye","Kore","Japonya","Fransa"] // sayfa yüklendiği anda bilgileri yüklemesi için buraya ayzdık ulkeler dizisini
        
        pickerView.delegate = self
        pickerView.dataSource = self // bazı protokoller ekledik ve onların sahip olduğu metodları pickerView in kullanabileceğini söylemiş olduk burada / self view controller ı temsil ediyor
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // kaç sütun olacağı
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count // içinde kaç veri olacağı
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelSonuc.text = ulkeler[row]
        
        secilenUlke = ulkeler[row]
    }
    @IBAction func goster(_ sender: Any) {
    }
    
    print(secilenUlke!)

}

