//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/19.
//
/*
var T: Int = 0
var N: Int = 0
var M: Int = 0
var K: Int = 0
let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
var visited: [[Bool]] = []
var graph: [[Int]] = []
var queue: Queue<(Int, Int)> = .init()
var result: Int = 0
var resultArr: [Int] = []

func input() {
    T = Int(readLine()!)!
    for _ in 0..<T {
        let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
        N = input[1]
        M = input[0]
        K = input[2]
        result = 0
        
        visited = Array(repeating: Array(repeating: false, count: M), count: N)
        graph = Array(repeating: Array(repeating: 0, count: M), count: N)
        while !queue.isEmpty {
            queue.dequeue()
        }
        
        for _ in 0..<K {
            let input: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[1]][input[0]] = 1
        }
        
        for i in 0..<N {
            for j in 0..<M {
                if graph[i][j] == 1 && !visited[i][j] {
                    result += 1
                    bfs(i, j)
                }
            }
        }
        resultArr.append(result)
    }
}

func bfs(_ y: Int, _ x: Int) {
    queue.enqueue((y, x))
    visited[y][x] = true
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        let currX = curr.1
        let currY = curr.0
        
        for currDir in dir {
            let nextY = currY + currDir.0
            let nextX = currX + currDir.1
            
            if isValid(nextY, nextX) && graph[nextY][nextX] == 1 && !visited[nextY][nextX] {
                visited[nextY][nextX] = true
                queue.enqueue((nextY, nextX))
            }
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if x < 0 || x >= M || y < 0 || y >= N {
        return false
    }
    return true
}

input()

for value in resultArr {
    print(value)
}
*/
