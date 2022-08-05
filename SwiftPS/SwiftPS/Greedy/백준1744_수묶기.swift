//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let N = Int(readLine()!)!
var maxPQ: PriorityQueue<Int> = .init(comparer: >)
var minPQ: PriorityQueue<Int> = .init(comparer: <)
var arr: [Int] = []
var zeroArr: [Int] = []
var result: Int = 0

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

arr.forEach {
    if $0 > 1 {
        maxPQ.enqueue($0)
    } else if $0 == 1 {
        result += 1
    } else if $0 == 0 {
        zeroArr.append(0)
    } else {
        minPQ.enqueue($0)
    }
}

while maxPQ.count > 1 {
    result += maxPQ.dequeue()! * maxPQ.dequeue()!
}

if !maxPQ.isEmpty {
    result += maxPQ.dequeue()!
}

while minPQ.count > 1 {
    result += minPQ.dequeue()! * minPQ.dequeue()!
}

if !minPQ.isEmpty {
    if !zeroArr.isEmpty {
        print(result)
    } else {
        print(result + minPQ.dequeue()!)
    }
} else {
    print(result)
}
*/
