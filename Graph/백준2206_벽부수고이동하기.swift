//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/01.
//
//import Foundation
/*
var N: Int = 0
var M: Int = 0
var graph: [[Int]] = []
var visited: [[[Int]]] = []
let dir: [(Int, Int)] = [(1,0),(-1,0),(0,1),(0,-1)]
var queue: Queue<(Int, Int, Int)> = .init()     // 마지막 값은 벽을 부쉈는지 안부쉈는지 유무.
var result: Int = Int.max

func input() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    N = input[0]
    M = input[1]
    
    if N == 1 && M == 1 {
        print("1")
        return
    }
    
    graph = Array(repeating: [], count: N)
    visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: M), count: N)
    
    for i in 0..<N {
        let line: [Int] = readLine()!.map { Int(String($0))! }
        graph[i].append(contentsOf: line)
    }
    
    let bfsResult = bfs()
    print(bfsResult == Int.max ? "-1" : bfsResult)
}

func bfs() -> Int {
    queue.enqueue((0, 0, 0))
    visited[0][0][0] = 1
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return Int.max }
        
        let currY = curr.0
        let currX = curr.1
        let alreadyRemoveWall: Int = curr.2
        let currDist = visited[currY][currX][alreadyRemoveWall]
        
        for currDir in dir {
            let nextY = currY + currDir.0
            let nextX = currX + currDir.1
            
            if isValid(nextY, nextX) {
                if nextY == N - 1 && nextX == M - 1 {
                    return currDist + 1
                }
                
                if graph[nextY][nextX] == 1 && alreadyRemoveWall == 0 && visited[nextY][nextX][1] == 0 {
                    visited[nextY][nextX][1] = currDist + 1
                    queue.enqueue((nextY, nextX, 1))
                } else if graph[nextY][nextX] == 0 && alreadyRemoveWall == 0 && visited[nextY][nextX][0] == 0 {
                    visited[nextY][nextX][0] = currDist + 1
                    queue.enqueue((nextY, nextX, 0))
                } else if graph[nextY][nextX] == 0 && alreadyRemoveWall == 1 && visited[nextY][nextX][1] == 0 {
                    visited[nextY][nextX][1] = currDist + 1
                    queue.enqueue((nextY, nextX, 1))
                }
            }
        }
    }
    
    return Int.max
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}

input()
*/
