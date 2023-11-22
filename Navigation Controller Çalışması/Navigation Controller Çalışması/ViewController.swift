//
//  ViewController.swift
//  Navigation Controller Çalışması
//
//  Created by sedef tok on 16.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "başlık kod ile"
        self.navigationItem.prompt = "açıklama kod ile"
        
        self.navigationItem.largeTitleDisplayMode = .never
        
        let resim = UIImage(named: "navBaslik")
        
        self.navigationItem.titleView = UIImageView(image: resim)
    }


}

