//
//  ViewController.swift
//  custom cell table view
//
//  Created by sedef tok on 29.10.2023.
//

import UIKit

class ViewController: UIViewController, TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath: IndexPath) {
        
    }
    
    
    

    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Bang Chan", kisiAge:26 )
        let k2 = Kisiler(kisiId: 2, kisiAd: "Lee Minho", kisiAge:25 )
        let k3 = Kisiler(kisiId: 3, kisiAd: "Seo Changbin", kisiAge:24 )
        let k4 = Kisiler(kisiId: 4, kisiAd: "Hwang Hyunjin", kisiAge:23 )
        let k5 = Kisiler(kisiId: 5, kisiAd: "Han Jisung", kisiAge:23 )
        let k6 = Kisiler(kisiId: 6, kisiAd: "Lee Felix", kisiAge:23 )
        let k7 = Kisiler(kisiId: 7, kisiAd: "Kim Seungmin",kisiAge:23 )
        let k8 = Kisiler(kisiId: 8, kisiAd: "Yang Jeongin", kisiAge:22)
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        kisilerListe.append(k6)
        kisilerListe.append(k7)
        kisilerListe.append(k8)
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func hucreUzerindeButtonTiklandi(indexPath: IndexPath) {
        print("button tıklandı: \(kisilerListe[indexPath.row].kisiAd!)")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = gelenKisi.kisiAd
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!)-\(gelenKisi.kisiAge!)"
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
      
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        print("ID: \(gelenKisi.kisiId!) AD: \(gelenKisi.kisiAd!) Age: \(gelenKisi.kisiAge!)")
    }
    
}
