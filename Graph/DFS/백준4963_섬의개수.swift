//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/23.
//
/*
import Foundation

var N: Int = 0
var M: Int = 0
let dir: [(Int, Int)] = [(0,1), (0,-1), (1,0), (-1,0), (-1,-1), (1,1), (-1,1), (1,-1)]
var graph: [[Int]] = []
var visited: [[Bool]] = []

func input() {
    let file: FileIO = .init()
    
    while true {
        M = file.readInt()
        N = file.readInt()
        
        if M == 0 && N == 0 {
            return
        }
        
        graph = Array(repeating: Array(repeating: 0, count: M), count: N)
        visited = Array(repeating: Array(repeating: false, count: M), count: N)
        var result: Int = 0
        
        for i in 0..<N {
            for j in 0..<M {
                graph[i][j] = file.readInt()
            }
        }
        
        for i in 0..<N {
            for j in 0..<M {
                if !visited[i][j] && graph[i][j] == 1 {
                    result += 1
                    dfs(i, j)
                }
            }
        }
        print(result)
    }
}

func dfs(_ y: Int, _ x: Int) {
    visited[y][x] = true
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] == 1 {
            dfs(nextY, nextX)
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}

input()
*/
