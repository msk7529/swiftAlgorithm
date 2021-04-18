//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/18.
//
/*
var N: Int = 0
var K: Int = 0
var visited: [Int] = Array(repeating: 0, count: 100001)
var queue: Queue<Int> = .init()

func input() {
    let input = readLine()!.split(separator: " ")
    N = Int(input[0])!
    K = Int(input[1])!
    
    if N == K {
        print("0")
    } else {
        bfs()
    }
}


func bfs() {
    queue.enqueue(N)
    visited[N] = 1
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        
        if curr == K {
            print(visited[curr] - 1)
            return
        }

        let next1 = curr - 1
        let next2 = curr + 1
        let next3 = curr * 2
        
        if next1 >= 0 && visited[next1] == 0 {
            visited[next1] = visited[curr] + 1
            queue.enqueue(next1)
        }
        if next2 <= 100000 && visited[next2] == 0 {
            visited[next2] = visited[curr] + 1
            queue.enqueue(next2)
        }
        if next3 <= 100000 && visited[next3] == 0 {
            visited[next3] = visited[curr] + 1
            queue.enqueue(next3)
        }
    }
}

input()
*/
