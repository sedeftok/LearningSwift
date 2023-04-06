import UIKit

var isimler = ["ahmet","mehmet","zeynep","serhat","kadir"]
var kontrolIsim = "sedef"

for i in isimler {
    if i == kontrolIsim {
            print("bu isim dizide mevcuttur")
            break
        }
    else if i != kontrolIsim {
        print("bu isim bulunmamaktadır")
        break
    }
        
}
        

