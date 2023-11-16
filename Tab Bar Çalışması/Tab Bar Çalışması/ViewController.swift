//
//  ViewController.swift
//  Tab Bar Çalışması
//
//  Created by sedef tok on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    var profilSayac = 0
    var isSayac = 0

    @IBAction func profilarttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let profileTabBarItem = tabItems[1]
            
            profilSayac = profilSayac + 1
            
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profilSayac)
            }
            
        }
        
        
        
    }
    
    
func isarttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let isTabBarItem = tabItems[0]
            
            isSayac = isSayac + 1
            
            isTabBarItem.badgeColor = UIColor.yellow
            isTabBarItem.badgeValue = String(isSayac)
            }
        
    }
    
    
    
}

