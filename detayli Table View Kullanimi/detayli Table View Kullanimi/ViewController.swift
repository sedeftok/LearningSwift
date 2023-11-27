//
//  ViewController.swift
//  detayli Table View Kullanimi
//
//  Created by sedef tok on 2.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yemeklerTableView: UITableView!
    
    var yemekListesi = [yemekler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        yemeklerTableView.dataSource = self
        yemeklerTableView.delegate = self
        
       // Nesneleri oluşturma
        let y1 = yemekler(yemekId: 1, yemekAd: "Çiğköfte", yemekResimId: "Image", yemekFiyat: 40)
        let y2 = yemekler(yemekId: 2, yemekAd: "Kremalı Makarna", yemekResimId: "Image 1", yemekFiyat: 90)
        let y3 = yemekler(yemekId: 3, yemekAd: "Dondurma", yemekResimId: "Image 2", yemekFiyat: 30)
        let y4 = yemekler(yemekId: 4, yemekAd: "Sıcak Çikolata", yemekResimId: "Image 3", yemekFiyat: 60)
        
        yemekListesi.append(y1)
        yemekListesi.append(y2)
        yemekListesi.append(y3)
        yemekListesi.append(y4)
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource,YemekTableViewCellProtocol {
    
    func siparisVer(indexPath: IndexPath) {
        let gelenYemek = yemekListesi[indexPath.row]
        print("\(gelenYemek.yemekAd!) sipariş verildi. Kazanç \(gelenYemek.yemekFiyat!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenYemek = yemekListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! YemekTableViewCell
        
        cell.labelYemekAdi.text = gelenYemek.yemekAd
        cell.labelYemekFiyati.text = "\(gelenYemek.yemekFiyat!) ₺"
        cell.yemekResimImageView.image = UIImage(named: gelenYemek.yemekResimId!)
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
}
