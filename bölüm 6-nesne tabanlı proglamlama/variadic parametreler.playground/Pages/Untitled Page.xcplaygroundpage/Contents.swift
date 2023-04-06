import UIKit

func toplamVariadic(sayilar:Int...)->{
    var toplam = 0
    for s in sayilar{
        toplam += s
        }
    return toplam
}
