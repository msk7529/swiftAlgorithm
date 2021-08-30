//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/31.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let F = line[0], S = line[1], G = line[2], U = line[3], D = line[4]
var visited: [Bool] = Array(repeating: false, count: F + 1)
var queue: Queue<Int> = .init()
var success: Bool = false
var result: Int = 1
queue.enqueue(S)
visited[S] = true

if S == G {
    print("0")
} else {
    loop: while !queue.isEmpty {
        let count = queue.count
        for _ in 0..<count {
            let curr = queue.dequeue()!
            let next1 = curr + U
            let next2 = curr - D
            
            if next1 == G || next2 == G {
                success = true
                break loop
            }
            
            if next1 <= F && !visited[next1] {
                queue.enqueue(next1)
                visited[next1] = true
            }
            
            if next2 >= 1 && !visited[next2] {
                queue.enqueue(next2)
                visited[next2] = true
            }
        }
        result += 1
    }

    print(success ? result : "use the stairs")
}
*/
