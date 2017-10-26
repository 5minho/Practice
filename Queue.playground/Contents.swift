//: Playground - noun: a place where people can play

import Cocoa

public struct Queue<T> {
    
    private var elements = [T]()
    
    public init() {}
    
    var count : Int {
        return elements.count
    }
    
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    var isFull : Bool {
        return self.capacity == elements.count
    }
    
    var capacity : Int {
        get {
            return elements.capacity
        }
        set {
            self.elements.reserveCapacity(newValue)
        }
    }
    
    mutating func enqueue(element : T)  {
        elements.append(element)
    }
    
    mutating func dequeue() -> T? {
        return elements.removeFirst()
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    mutating func clear() {
        elements.removeAll()
    }
    
    mutating func insert(_ newElement : T, at index : Int) {
        elements.insert(newElement, at: index)
    }
    
    mutating func remove(at index : Int) {
        elements.remove(at: index)
    }
    
}

var queue = Queue<Int>()
queue.capacity = 100

queue.enqueue(element: 3)
queue.enqueue(element: 4)
queue.enqueue(element: 7)

print(queue.dequeue())
print(queue.dequeue())
print(queue.dequeue())
print(queue.dequeue())


