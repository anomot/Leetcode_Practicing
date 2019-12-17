import UIKit

class Node {
    var val: Int
    var prev: Node?
    var next: Node?
    init(_ val: Int) {
        self.val = val
    }
}
class MyCircularDeque {

    var capacity = 0
    var count = 0
    var head: Node?
    var tail: Node?

    init(_ k: Int) {
        self.capacity = k
    }


    func insertFront(_ value: Int) -> Bool {
        if isFull() { return false }

        let n = Node(value)
        if head == nil {
            head = n
            tail = head
        } else {
            n.next = head
            head?.prev = n
            head = n
        }
        count += 1
        return true
    }


    func insertLast(_ value: Int) -> Bool {
        if isFull() { return false }

        let n = Node(value)
        if tail == nil {
            tail = n
            head = tail
        } else {
            tail?.next = n
            n.prev = tail
            tail = n
        }
        count += 1
        return true
    }


    func deleteFront() -> Bool {
        if isEmpty() { return false }

        head = head?.next
        head?.prev = nil
        count -= 1
        if isEmpty() { tail = nil }
        return true
    }


    func deleteLast() -> Bool {
        if isEmpty() { return false }
        tail = tail?.prev
        tail?.next = nil
        count -= 1
        if isEmpty() { head = nil }
        return true
    }


    func getFront() -> Int {
        if isEmpty() { return -1 }
        return head!.val
    }


    func getRear() -> Int {
        if isEmpty() { return -1 }
        return tail!.val
    }


    func isEmpty() -> Bool {
        return count == 0
    }

    func isFull() -> Bool {
        return count == capacity
    }
}


  let obj = MyCircularDeque(3)
  let ret_1: Bool = obj.insertFront(3)
  let ret_2: Bool = obj.insertLast(1)
  let ret_3: Bool = obj.deleteFront()
  let ret_4: Bool = obj.deleteLast()
  let ret_5: Int = obj.getFront()
  let ret_6: Int = obj.getRear()
  let ret_7: Bool = obj.isEmpty()
  let ret_8: Bool = obj.isFull()

