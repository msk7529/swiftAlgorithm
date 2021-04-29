//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/30.
//
/*
var M: Int = 0
var N: Int = 0
var K: Int = 0
var graph: [[Int]] = []
var visited: [[Bool]] = []
let dir: [(Int, Int)] = [(-1,0),(1,0),(0,-1),(0,1)]
var num: Int = 0
var result: [Int] = []

func input() {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    M = input[0]
    N = input[1]
    K = input[2]
    graph = Array(repeating: Array(repeating: 0, count: M), count: N)
    visited = Array(repeating: Array(repeating: false, count: M), count: N)
        
    for _ in 0..<K {
        let line: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
        for y in line[1]..<line[3] {
            for x in line[0]..<line[2] {
                graph[x][y] = 1
            }
        }
    }
    
    for x in 0..<N {
        for y in 0..<M {
            if graph[x][y] == 0 && !visited[x][y] {
                dfs(x, y)
                result.append(num)
            }
            num = 0
        }
    }
    
    result.sort()
    print(result.count)
    let resultStr: String = result.map { String($0 + 1) }.joined(separator: " ")
    print(resultStr)
}

func dfs(_ x: Int, _ y: Int) {
    visited[x][y] = true
    
    for currDir in dir {
        let nextX = x + currDir.0
        let nextY = y + currDir.1
        
        if isValid(nextX, nextY) && graph[nextX][nextY] == 0 && !visited[nextX][nextY] {
            num += 1
            dfs(nextX, nextY)
        }
    }
}

func isValid(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x >= N || y < 0 || y >= M {
        return false
    }
    return true
}

input()
*/
