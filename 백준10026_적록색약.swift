//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/01.
//
/*
var N: Int = Int(readLine()!)!
var graph: [[Character]] = Array(repeating: [], count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
let dir: [(Int, Int)] = [(1,0),(-1,0),(0,1),(0,-1)]
var num: Int = 0
var result: [Int] = []
var queue: Queue<(Int, Int)> = .init()

func input() {
    for i in 0..<N {
        let line: String = readLine()!
        graph[i] = line.map { Character(String($0)) }
    }
    
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] {
                bfs(i, j)
                num += 1
            }
        }
    }
    result.append(num)
    
    num = 0
    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] {
                bfs2(i, j)
                num += 1
            }
        }
    }
    result.append(num)
    
    print(result.map { String($0) }.joined(separator: " "))
}

func bfs(_ y: Int, _ x: Int) {
    queue.enqueue((y, x))
    visited[y][x] = true
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        let currY = curr.0
        let currX = curr.1
        let currColor = graph[currY][currX]
        
        for currDir in dir {
            let nextY = currY + currDir.0
            let nextX = currX + currDir.1
            
            if isValid(nextY, nextX) && graph[nextY][nextX] == currColor && !visited[nextY][nextX] {
                queue.enqueue((nextY, nextX))
                visited[nextY][nextX] = true
            }
        }
    }
}

func bfs2(_ y: Int, _ x: Int) {
    queue.enqueue((y, x))
    visited[y][x] = true
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        let currY = curr.0
        let currX = curr.1
        let currColor = graph[currY][currX]
        
        for currDir in dir {
            let nextY = currY + currDir.0
            let nextX = currX + currDir.1
            
            if isValid(nextY, nextX) && !visited[nextY][nextX] {
                if currColor == "R" && graph[nextY][nextX] != "B" {
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                } else if currColor == "G" && graph[nextY][nextX] != "B" {
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                } else if currColor == "B" && graph[nextY][nextX] == "B" {
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                }
            }
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
