//
//  yemekler.swift
//  detayli Table View Kullanimi
//
//  Created by sedef tok on 3.11.2023.
//

import Foundation

class yemekler {
    var yemekId:Int?
    var yemekAd:String?
    var yemekResimId: String?
    var yemekFiyat:Double?
    
    init() {
        
    }
    
    init(yemekId:Int,yemekAd:String,yemekResimId: String,yemekFiyat:Double){
        self.yemekId = yemekId
        self.yemekAd = yemekAd
        self.yemekResimId = yemekResimId
        self.yemekFiyat = yemekFiyat
    }
}
