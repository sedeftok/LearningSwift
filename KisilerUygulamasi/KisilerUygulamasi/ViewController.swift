//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by sedef tok on 7.12.2023.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController{
    
    let context = appDelegate.persistentContainer.viewContext

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListe = [Kisiler]()
    
    var aramaYapiliyorMu = false
    var aramaKelimesi:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        searchBar.delegate = self
        
      }
    
    override func viewWillAppear(_ animated: Bool) {
        if aramaYapiliyorMu {
            aramaYap(kisi_ad: aramaKelimesi!)
        }else{
            tumKisilerAl()
        }
        
        kisilerTableView.reloadData() // tableview ara yüzünü güncelle demek
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indeks = sender as? Int
        
        if segue.identifier == "toDetay" {
            let gidilecekVC = segue.destination as! KisiDetayViewController
            gidilecekVC.kisi = kisilerListe[indeks!]
        }
        if segue.identifier == "toGuncelle" {
            let gidilecekVC = segue.destination as! KisiGuncelleViewController
            gidilecekVC.kisi = kisilerListe[indeks!]
        }
        
        
    }
    
    func tumKisilerAl(){
        
        do{
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
        } catch{
            print(error)
        }
    }

    func aramaYap(kisi_ad:String){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "kisi_ad CONTAINS %@", kisi_ad)
        
        do{
            kisilerListe = try context.fetch(fetchRequest)
        } catch{
            print(error)
        }
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisiHucre", for: indexPath) as! KisiHucreTableViewCell
        
        cell.kisiYaziLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_no!)"
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetay", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let silAction = UITableViewRowAction(style: .default, title: "Sil", handler: {
            (action:UITableViewRowAction, indexPath:IndexPath)-> Void in
            
            let kisi = self.kisilerListe[indexPath.row]
            
            self.context.delete(kisi)
            
            appDelegate.saveContext()
            
            if self.aramaYapiliyorMu {
                self.aramaYap(kisi_ad: self.aramaKelimesi!)
            }else{
                self.tumKisilerAl()
            }
            
            self.kisilerTableView.reloadData()
        })
    
        
        
        let guncelleAction = UITableViewRowAction(style: .normal, title: "Güncelle", handler: {
            (action:UITableViewRowAction, indexPath:IndexPath)-> Void in
            
            self.performSegue(withIdentifier: "toGuncelle", sender: indexPath.row)
        })
        return [silAction,guncelleAction]
    
        
}

   
}

extension ViewController:UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonuç: \(searchText)")
        
        aramaKelimesi = searchText
        
        if searchText == "" {
            aramaYapiliyorMu = false
            tumKisilerAl()
        }else{
            aramaYapiliyorMu = true
            aramaYap(kisi_ad: aramaKelimesi!)
        }
        kisilerTableView.reloadData()
        
        
    }
}
 
 



















