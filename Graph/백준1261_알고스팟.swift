//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/21.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[1], M = input[0]
var graph: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]

for _ in 0..<N {
    let line = readLine()!.map { Int(String($0))! }
    graph.append(line)
}

var deque: Deque<(Int, Int, Int)> = .init()
deque.enqueue((0, 0, 0))
visited[0][0] = true

while !deque.isEmpty {
    let curr = deque.dequeue()!
    
    if curr.0 == N - 1 && curr.1 == M - 1 {
        print(curr.2)
        break
    }
    
    for currDir in dir {
        let nextY = curr.0 + currDir.0
        let nextX = curr.1 + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] {
            visited[nextY][nextX] = true
            
            if graph[nextY][nextX] == 0 {
                deque.enqueueFront((nextY, nextX, curr.2))
            } else {
                deque.enqueue((nextY, nextX, curr.2 + 1))
            }
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}
*/
