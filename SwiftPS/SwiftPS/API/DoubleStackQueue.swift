//
//  DoubleStackQueue.swift
//  Algorithm
//
//  Created by kakao on 2021/09/04.
//

struct DoubleStackQueue<T> {
    
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    
    var count: Int {
        return leftStack.count + rightStack.count
    }
    
    var isEmpty: Bool {
        return count == 0
    }
    
    var front: T? {
        return !leftStack.isEmpty ? leftStack.last : rightStack.first
    }
    
    init() { }
    
    init(with array: [T]) {
        rightStack = array
    }
    
    mutating func enqueue(_ element: T) {
        rightStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
}
