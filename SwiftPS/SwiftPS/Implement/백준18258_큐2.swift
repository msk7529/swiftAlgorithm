//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/10.
//
/*
import Foundation

let file = FileIO()
let N = file.readInt()
var deque: Deque<Int> = .init()
var result: String = ""

for _ in 0..<N {
    let command: Int = file.readString()
    
    if command == 448 {
        // 448은 "push"의 아스키코드 값
        deque.enqueue(file.readInt())
    } else if command == 335 {
        if let front = deque.dequeue() {
            result += "\(front)\n"
        } else {
            result += "-1\n"
        }
    } else if command == 443 {
        result += "\(deque.count)\n"
    } else if command == 559 {
        if deque.isEmpty {
            result += "1\n"
        } else {
            result += "0\n"
        }
    } else if command == 553 {
        if let front = deque.peekFront() {
            result += "\(front)\n"
        } else {
            result += "-1\n"
        }
    } else {
        if let back = deque.peekBack() {
            result += "\(back)\n"
        } else {
            result += "-1\n"
        }
    }
}
if !result.isEmpty {
    result.removeLast()
}
print(result)
*/
