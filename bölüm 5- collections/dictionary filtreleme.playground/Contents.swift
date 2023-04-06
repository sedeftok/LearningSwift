import UIKit

var okul:[Int:String] = [154:"ahmet",67:"mehmet",871:"zeynep",45:"ahmet"]

// $0 dictionary temsil eder

//KEY FİLTRELEME
//key i 70ten büyük olanları filtreler
var sonucDic1 = okul.filter({$0.key > 70})
print(sonucDic1)

//VALUE FİLTRELEME
//value ahmet e eşit olanları tutar
var sonucDic2 = okul.filter({$0.value == "ahmet"})
print(sonucDic2)

// VALUE VE KEY FİLTRELEME
// value ahmet e eşit olan ve le yi 70 ten büyül oalnları filtreler

var sonucDic3 = okul.filter({$0.value == "ahmet" && $0.key > 70})
print(sonucDic3)
