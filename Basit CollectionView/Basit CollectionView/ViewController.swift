//
//  ViewController.swift
//  Basit CollectionView
//
//  Created by sedef tok on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ulkeler:[String] = [String]()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ulkeler = ["Türkiye","Güney Kore","Japonya","Fransa","Rusya","İtalya","Mısır","Almanya"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! CollectionViewHucre
        
        cell.hucreLabel.text = ulkeler[indexPath.row]
        
        return cell
    }
}
