import UIKit

//break: işlemi bitirir

for  i in 1...5 {
    if i == 3 {
        break
    }
    print(i)
}


// continue: işlemi pas geçer
 
for i in 1...5  {
    if i == 3 {
        continue
    }
    print(i)
}
