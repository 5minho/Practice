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

// 타입 값을 출력할 때 좀 더 알아보기 쉬운 값으로 출력하기 위해 CustomStringConvertible, CustomDebugStringConvertible 적용
extension Stack : CustomStringConvertible, CustomDebugStringConvertible {
    
    var description: String {
        return self.elements.description
    }
    
    var debugDescription: String {
        return self.elements.debugDescription
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



