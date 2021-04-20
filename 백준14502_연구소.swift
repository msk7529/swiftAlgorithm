//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/21.
//
/*
var N: Int = 0
var M: Int = 0
let dir: [(Int, Int)] = [(0,1),(0,-1),(1,0),(-1,0)]
var backupedGraph: [[Int]] = []
var graph: [[Int]] = []
var visited: [[Bool]] = []
var emptyBlock: [(Int, Int)] = []
var virusBlock: [(Int, Int)] = []
var result: Int = 0

func input() {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    N = input[0]
    M = input[1]
    
    graph = Array(repeating: [], count: N)
    
    for i in 0..<N {
        graph[i] = readLine()!.splitInt()
        for (index, value) in graph[i].enumerated() {
            if value == 0 {
                emptyBlock.append((i, index))
            } else if value == 2 {
                virusBlock.append((i, index))
            }
        }
    }
    backupedGraph = graph
    
    for i in 0..<emptyBlock.count {
        for j in i+1..<emptyBlock.count {
            for k in j+1..<emptyBlock.count {
                visited = Array(repeating: Array(repeating: false, count: M), count: N)
                graph = backupedGraph

                graph[emptyBlock[i].0][emptyBlock[i].1] = 1
                graph[emptyBlock[j].0][emptyBlock[j].1] = 1
                graph[emptyBlock[k].0][emptyBlock[k].1] = 1
                
                for curr in virusBlock {
                    if visited[curr.0][curr.1] == false {
                        dfs(curr.0, curr.1)
                    }
                }
                calculate()
            }
        }
    }
    print(result)
}

func dfs(_ y: Int, _ x: Int) {
    visited[y][x] = true
    graph[y][x] = 2
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && graph[nextY][nextX] == 0 && !visited[nextY][nextX] {
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

func calculate() {
    var num: Int = 0
    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 0 {
                num += 1
            }
        }
    }
    result = max(result, num)
}

input()
*/
