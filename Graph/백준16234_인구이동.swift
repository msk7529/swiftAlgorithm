//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/20.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], L = input[1], R = input[2]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
var day: Int = 0
var visitedPos: [(Int, Int)] = []

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[i] = line
}

while true {
    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    var isFinished: Bool = true

    for i in 0..<N {
        for j in 0..<N {
            visitedPos = []
            
            if !visited[i][j] {
                visited[i][j] = true
                dfs(i, j)
                
                if !visitedPos.isEmpty {
                    isFinished = false
                    var sum = graph[i][j]
                    
                    for curr in visitedPos {
                        sum += graph[curr.0][curr.1]
                    }
                    sum = sum / (visitedPos.count + 1)
                    
                    graph[i][j] = sum
                    for curr in visitedPos {
                        graph[curr.0][curr.1] = sum
                    }
                }
            }
        }
    }
    
    if isFinished {
        print(day)
        break
    } else {
        day += 1
    }
}

func dfs(_ y: Int, _ x: Int) {
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && L...R ~= abs(graph[y][x] - graph[nextY][nextX]) {
            visited[nextY][nextX] = true
            visitedPos.append((nextY, nextX))
            dfs(nextY, nextX)
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= N {
        return false
    }
    return true
}
*/
