//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/29.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]
var deque: Deque<Int> = .init()
var resultStr: String = "<"

for i in 1...N {
    deque.enqueue(i)
}

while !deque.isEmpty {
    for _ in stride(from: 0, to: K - 1, by: 1) {
        deque.enqueue(deque.dequeue()!)
    }
    resultStr += "\(deque.dequeue()!), "
}

resultStr.removeLast()
resultStr.removeLast()
resultStr += ">"
print(resultStr)
*/
