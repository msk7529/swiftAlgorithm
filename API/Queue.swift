//
//  Queue.swift
//  Algorithm
//
//  Created by kakao on 2021/04/13.
//
public struct Queue<T> {
    fileprivate var array: [T?] = []
    fileprivate var head: Int = 0

    public var count: Int {
        return array.count - head
    }

    public var isEmpty: Bool {
        return count == 0
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }

    @discardableResult
    public mutating func dequeue() -> T? {
        // 일반적인 queue의 dequeue 연산은 O(N).
        // 매 dequeue 수행시 마다 원소들을 앞으로 한 칸씩 앞으로 이동시키지 말고, 앞에 여백을 주는 식으로 최적화
        guard head < array.count, let element = array[head] else { return nil }

        array[head] = nil
        head += 1

        let percentage: Double = Double(head) / Double(array.count)

        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }

    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}
