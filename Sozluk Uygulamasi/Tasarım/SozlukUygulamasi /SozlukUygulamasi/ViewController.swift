//
//  ViewController.swift
//  SozlukUygulamasi
//
//  Created by sedef tok on 23.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var kelimeTableView: UITableView!
    
    
    var kelimeListesi = [Kelimeler]() // veri kümesi
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let k1 = Kelimeler(kelime_id: 1, ingilizce: "Table", turkce: "Masa")
        let k2 = Kelimeler(kelime_id: 2, ingilizce: "Door", turkce: "Kapı")
        let k3 = Kelimeler(kelime_id: 3, ingilizce: "Window", turkce: "Pencere")
        
        kelimeListesi.append(k1) // ekleme
        kelimeListesi.append(k2)
        kelimeListesi.append(k3)
        
        kelimeTableView.delegate = self // listeleme dersinde açıklaması var
        kelimeTableView.dataSource = self
        
        searchBar.delegate = self
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        
    }


}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int { // kaç bölüm var
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // kaç satır var
        return kelimeListesi.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kelime = kelimeListesi[indexPath.row] // kelimeleri sırayla verecektir
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kelimeHucre", for: indexPath) as! KelimeHucreTableViewCell // bu arayüzdeki hücredeki verilere erişmek istiyorum demek
        
        cell.ingilizceLabel.text = kelime.ingilizce
        cell.turkceLabel.text = kelime.turkce
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "toKelimeDetay", sender: indexPath.row)
    }
}
    
   
    

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("Arama Sonucu: \(searchText)")
    }
    
    
}
