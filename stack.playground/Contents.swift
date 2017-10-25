//: Playground - noun: a place where people can play

import Cocoa

struct Stack<T> {
    
    private var elements = [T]()
    
    public mutating func pop() -> T? {
        return elements.popLast()
    }
    
    public mutating func push(element : T) {
        elements.append(element)
    }
    
    public func peek() -> T? {
        return elements.last
    }
    
    public var isEmpty : Bool {
        return elements.isEmpty
    }
    
    public var count : Int {
        return elements.count
    }
    
}

var stack = Stack<Int>()
stack.push(element: 3)
stack.push(element: 4)
stack.push(element: -2)
stack.pop()
stack.pop()
stack.pop()
stack.pop()



