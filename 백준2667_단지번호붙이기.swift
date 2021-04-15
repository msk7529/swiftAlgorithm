//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
/*
import Foundation

var N: Int = 0
var graph: [[Int]] = []
var visited: [[Bool]] = []
var currHouseNum: Int = 0
var result: [Int] = []
let dir: [(Int, Int)] = [(1,0), (-1,0), (0,1), (0,-1)]

func input() {
    N = Int(readLine()!)!
    graph = Array(repeating: Array(repeating: 0, count: N), count: N)
    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    result = Array(repeating: 0, count: N * N)
    
    for i in 0..<N {
        let row: String = readLine()!
        for (j, value) in row.enumerated() {
            graph[i][j] = Int(String(value))!
        }
    }
}

func dfs(_ currY: Int, _ currX: Int) {
    visited[currY][currX] = true
    result[currHouseNum] += 1
    
    for currDir in dir {
        let nextY = currY + currDir.0
        let nextX = currX + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] > 0 {
            dfs(nextY, nextX)
        }
    }
}

func isValid(_ currY: Int, _ currX: Int) -> Bool {
    if currY < 0 || currY >= N || currX < 0 || currX >= N {
        return false
    }
    return true
}

func calculate() {
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] && graph[i][j] > 0 {
                currHouseNum += 1
                dfs(i, j)
            }
        }
    }
    
    let filteredResult: [Int] = result.filter { $0 != 0 }.sorted()
    print(filteredResult.count)
    for value in filteredResult {
        print(value)
    }
}

input()
calculate()
*/

