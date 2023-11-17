//
//  ViewController.swift
//  Search Bar TableView
//
//  Created by sedef tok on 9.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    var aramaSonucuUlkeler:[String] = [String]()
    
    var aramaYapiliyorMu = false
  override func viewDidLoad() {
        super.viewDidLoad()
        
      ulkeler = ["Türkiye","Güney Kore","Japonya","Rusya","Malezya","Amerika","Fransa","Meksika","Azerbaycan","İrlanda","İzlanda","İtalya","Mısır"]
      
      searchBar.delegate = self
      
      tableView.delegate = self
      tableView.dataSource = self
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
    }
    
    
}

extension ViewController:UISearchBarDelegate {
    
}
