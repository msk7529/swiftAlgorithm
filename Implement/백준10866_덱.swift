//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/12.
//
/*
var deque: Deque<Int> = .init()
let N = Int(readLine()!)!
var result = ""

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { String($0) }
    let command = line[0]
    if command == "push_front" {
        let num = Int(line[1])!
        deque.enqueueFront(num)
    } else if command == "push_back" {
        let num = Int(line[1])!
        deque.enqueue(num)
    } else if command == "pop_front" {
        if let front = deque.dequeue() {
            result += "\(front)\n"
        } else {
            result += "-1\n"
        }
    } else if command == "pop_back" {
        if let back = deque.dequeueBack() {
            result += "\(back)\n"
        } else {
            result += "-1\n"
        }
    } else if command == "size" {
        result += "\(deque.count)\n"
    } else if command == "empty" {
        result += "\(deque.isEmpty ? "1" : "0")\n"
    } else if command == "front" {
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
