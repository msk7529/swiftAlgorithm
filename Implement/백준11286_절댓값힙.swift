//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/11/28.
//
/*
import Foundation

let N = Int(readLine()!)!
var queue: PriorityQueue<Int> = .init(comparer: <)
var multiSet: Multiset<Int> = .init()
var result: String = ""

for _ in 0..<N {
    let num = Int(readLine()!)!
    if num == 0 {
        if let front = queue.dequeue() {
            let x1 = front
            let x2 = -front
            if multiSet.contains(x2) {
                multiSet.remove(x2)
                result += "\(x2)\n"
            } else {
                multiSet.remove(x1)
                result += "\(x1)\n"
            }
        } else {
            result += "0\n"
        }
    } else {
        queue.enqueue(abs(num))
        multiSet.add(num)
    }
}
print(result)
*/
