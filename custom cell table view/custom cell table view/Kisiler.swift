//
//  Kisiler.swift
//  custom cell table view
//
//  Created by sedef tok on 29.10.2023.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    var kisiAge:Int?
    
    init() {
        
    }
    
    init(kisiId:Int,kisiAd:String,kisiAge:Int) {
        self.kisiAd = kisiAd
        self.kisiAge = kisiAge
        self.kisiId = kisiId
    }
}
