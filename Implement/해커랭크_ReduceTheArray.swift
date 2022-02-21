//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/22.
/*

// https://www.hackerrank.com/x/library/hackerrank/all/questions/1089192/try
// Reduce the Array
// 정렬이 필요하다는 생각 + 시간초과에 걸리지 않기 위해서는 우선순위큐를 사용해야함.
// 우선순위큐를 언어의 라이브러리로 지원하는 경우에는 수월하지만, 그렇지 않으면 까다로운듯

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


func minimizeCost(arr: [Int]) -> Int {
    var result: Int = 0
    var pq: PriorityQueue<Int> = .init(comparer: <)
    arr.forEach { pq.enqueue($0) }
    
    while pq.count > 1 {
        let front = pq.dequeue()! + pq.dequeue()!
        pq.enqueue(front)
        result += front
    }
    return result
}

/*  시간초과 발생.
func minimizeCost(arr: [Int]) -> Int {
    var numbers = arr.sorted { $0 > $1 }
    var result: Int = 0
    while numbers.count > 1 {
        let next = numbers.popLast()! + numbers.popLast()!
        numbers.append(next)
        numbers.sort { $0 > $1 }
        result += next
    }
    return result
}
*/

print(minimizeCost(arr: [95, 37, 33, 19, 92, 94, 16, 2, 18, 50]))
*/
