//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/01/07.

let T = Int(readLine()!)!
var result: String = ""

for index in 0..<T {
    let _ = readLine()!
    let _ = readLine()!
    var sejunPQ: PriorityQueue<Int> = .init(comparer: <)
    var sebiPQ: PriorityQueue<Int> = .init(comparer: <)
    let sejun = readLine()!.split(separator: " ").map { Int(String($0))! }
    let sebi = readLine()!.split(separator: " ").map { Int(String($0))! }
    if index == T - 1 { let _ = readLine()! }
    
    sejun.forEach { sejunPQ.enqueue($0) }
    sebi.forEach { sebiPQ.enqueue($0) }
    
    while !sejunPQ.isEmpty && !sebiPQ.isEmpty {
        let frontSejun = sejunPQ.peek()!
        let frontSebi = sebiPQ.peek()!
        
        if frontSejun == frontSebi {
            sebiPQ.dequeue()
        } else if frontSejun < frontSebi {
            sejunPQ.dequeue()
        } else {
            sebiPQ.dequeue()
        }
    }
    
    if sejunPQ.isEmpty {
        result += "B\n"
    } else {
        result += "S\n"
    }
}
result.removeLast()
print(result)

public struct PriorityQueue<T> {
    var nodes: [T] = []
    let comparer: (T,T) -> Bool

    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }

    var isEmpty: Bool {
        return nodes.isEmpty
    }
    
    var count: Int {
        return nodes.count
    }

    func peek() -> T? {
        return nodes.first
    }

    mutating func enqueue(_ element: T) {
        var index: Int = nodes.count

        nodes.append(element)

        while index > 0, comparer(nodes[index], nodes[(index - 1) / 2]) {
            nodes.swapAt(index, (index - 1) / 2)
            index = (index - 1) / 2
        }
    }

    @discardableResult mutating func dequeue() -> T? {
        guard !nodes.isEmpty else {
            return nil
        }

        if nodes.count == 1 {
            return nodes.removeFirst()
        }

        let result: T? = nodes.first
        nodes.swapAt(0, nodes.count - 1)
        _ = nodes.popLast()

        var index = 0

        while index < nodes.count {
            let left: Int = index * 2 + 1
            let right: Int = left + 1

            if right < nodes.count {
                if !comparer(nodes[left], nodes[right]), comparer(nodes[right], nodes[index]) {
                    nodes.swapAt(right, index)
                    index = right
                } else if comparer(nodes[left], nodes[index]) {
                    nodes.swapAt(left, index)
                    index = left
                } else {
                    break
                }
            } else if left < nodes.count {
                if comparer(nodes[left], nodes[index]) {
                    nodes.swapAt(left, index)
                    index = left
                } else {
                    break
                }
            } else {
                break
            }
        }

        return result
    }
}

extension PriorityQueue where T: Comparable {
    init() {
        self.init(comparer: >)
    }
}
