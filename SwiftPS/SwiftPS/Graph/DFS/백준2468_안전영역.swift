//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
/*
var N: Int = 0
var graph: [[Int]] = []
var visited: [[Bool]] = []
let dir: [(Int, Int)] = [(1,0),(-1,0),(0,1),(0,-1)]
var result: Int = 0
var maxHeight: Int = 0
var minHeight: Int = 0

func input() {
    N = Int(readLine()!)!
    graph = Array(repeating: [], count: N)
    
    for i in 0..<N {
        let line: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[i].append(contentsOf: line)
        maxHeight = max(graph[i].max()!, maxHeight)
        minHeight = min(graph[i].min()!, minHeight)
    }
        
    for height in (minHeight - 1)..<maxHeight {
        // minHeight 부터 시작하면 안되고, minHeight - 1 부터 시작해야함.. 비가 자연수라는 말이 없기 때문에..
        visited = Array(repeating: Array(repeating: false, count: N), count: N)
        var num: Int = 0
        
        for i in 0..<N {
            for j in 0..<N {
                if graph[i][j] > height && !visited[i][j] {
                    num += 1
                    dfs(i, j, height)
                }
            }
        }
        result = max(result, num)
    }
    
    print(result)
}

func dfs(_ y: Int, _ x: Int, _ limit: Int) {
    visited[y][x] = true
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] > limit {
            dfs(nextY, nextX, limit)
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= N {
        return false
    }
    return true
}

input()
*/
