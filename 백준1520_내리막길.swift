//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/03.
//
/*
import Foundation

let file: FileIO = .init()
var M: Int = file.readInt()
var N: Int = file.readInt()
let dir: [(Int, Int)] = [(1,0),(-1,0),(0,-1),(0,1)]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: M)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: N), count: M)

func input() {
    for i in 0..<M {
        for j in 0..<N {
            graph[i][j] = file.readInt()
        }
    }
    
    print(dfs(0, 0))
}

func dfs(_ y: Int, _ x: Int) -> Int {
    if y == M - 1 && x == N - 1 {
        return 1
    }
    
    guard dp[y][x] == -1 else {
        return dp[y][x]
    }
    
    dp[y][x] = 0
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && graph[nextY][nextX] < graph[y][x] {
            dp[y][x] += dfs(nextY, nextX)
        }
    }
    return dp[y][x]
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y >= M || y < 0 || x < 0 || x >= N {
        return false
    }
    return true
}

input()
*/
