//
//  ViewController.swift
//  Searcg Bar Kullanimi
//
//  Created by sedef tok on 9.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       searchBar.delegate = self
        
      searchBar.scopeButtonTitles = ["Birinci","İkinci"]
        
        
    }
   

}

extension ViewController:UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("arama sonuc:\(searchText)")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel Seçildi")
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("birinci seçildi")
        }
        if selectedScope == 1 {
            print("ikinci seçildi")
        }
    }
}
