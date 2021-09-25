//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/16.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = input[0], B = input[1]
var visited: [Bool] = Array(repeating: false, count: B + 1)
var result: Int = 1
var queue: Queue<Int> = .init()

if A == B {
    print("1")
} else if A > B {
    print("-1")
} else {
    var finished: Bool = false
    
    queue.enqueue(A)
    visited[A] = true
    
    loop: while !queue.isEmpty {
        let size = queue.count
        
        for _ in 0..<size {
            let curr = queue.dequeue()!
            
            let next1 = curr * 2
            let next2 = curr * 10 + 1
            
            if next1 == B || next2 == B {
                print(result + 1)
                finished = true
                break loop
            }
            
            if next1 < B && !visited[next1] {
                visited[next1] = true
                queue.enqueue(next1)
            }
            
            if next2 < B && !visited[next2] {
                visited[next2] = true
                queue.enqueue(next2)
            }
        }
        result += 1
    }
    
    if !finished {
        print("-1")
    }
}
*/
