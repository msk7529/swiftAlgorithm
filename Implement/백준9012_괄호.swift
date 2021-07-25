//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
let T: Int = Int(readLine()!)!

for _ in 0..<T {
    var queue: Queue<Character> = .init()
    var isFinished: Bool = false
    let input = readLine()!
    
    for char in input {
        if char == "(" {
            queue.enqueue(char)
        } else {
            if queue.isEmpty {
                print("NO")
                isFinished = true
                break
            } else {
                queue.dequeue()
            }
        }
    }
    
    if !isFinished {
        print(queue.isEmpty ? "YES" : "NO")
    }
}
*/
