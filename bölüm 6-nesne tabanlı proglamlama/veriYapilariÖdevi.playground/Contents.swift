import UIKit

class Node {
    var data: Int?
    var next: Node?
    var prev: Node?
}

var head: Node?

func addNoteToList(value: Int) {
    if head == nil {
        let newNode = Node()
        newNode.data = value
        newNode.next = newNode
        newNode.prev = newNode
        head = newNode
        return
    }
    
    let last = head?.prev
    
    let newNode = Node()
    newNode.data = value
    
    newNode.next = head
    head?.prev = newNode
    newNode.prev = last
    last?.next = newNode
}

func main() {
    
    for item in 1...100 {
        addNoteToList(value: item)
    }
}

main()




addNoteToList(value: <#T##Int#>)
