//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/24.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var graph: [[Int]] = []
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var result: Int = 0

for _ in 0..<N {
    let line = readLine()!.map {
        return $0 == "W" ? 0 : 1
    }
    graph.append(line)
}

for i in 0..<N {
    for j in 0..<M {
        if graph[i][j] == 1 {
            result = max(result, BFS(i, j))
        }
    }
}

print(result)

func BFS(_ y: Int, _ x: Int) -> Int {
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
    var queue: Queue<(Int, Int, Int)> = .init()
    var dist: Int = 0
    
    visited[y][x] = true
    queue.enqueue((y, x, 0))
    
    while !queue.isEmpty {
        let count = queue.count
        
        for _ in 0..<count {
            let curr = queue.dequeue()!
            
            for currDir in dir {
                let nextY = curr.0 + currDir.0
                let nextX = curr.1 + currDir.1
                
                if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] == 1 {
                    queue.enqueue((nextY, nextX, curr.2 + 1))
                    visited[nextY][nextX] = true
                    dist = max(dist, curr.2 + 1)
                }
            }
        }
    }
    
    return dist
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}
*/
