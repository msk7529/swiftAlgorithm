//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/11/21.
//
/*
let N = Int(readLine()!)!
var queue: Deque<Int> = .init()
var result: String = ""

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { String($0 )}
    let command = line[0]
    
    if command == "push" {
        queue.enqueue(Int(line[1])!)
    } else if command == "pop" {
        if let num = queue.dequeue() {
            result += "\(num)\n"
        } else {
            result += "-1\n"
        }
    } else if command == "size" {
        result += "\(queue.count)\n"
    } else if command == "empty" {
        result += queue.isEmpty ? "1\n" : "0\n"
    } else if command == "front" {
        if let front = queue.peekFront() {
            result += "\(front)\n"
        } else {
            result += "-1\n"
        }
    } else {
        if let back = queue.peekBack() {
            result += "\(back)\n"
        } else {
            result += "-1\n"
        }
    }
}
print(result)
*/
