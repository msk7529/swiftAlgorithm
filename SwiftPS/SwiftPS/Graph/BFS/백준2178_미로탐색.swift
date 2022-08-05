//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
/*
import Foundation

let input: [Int] = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let N: Int = input[0]
let M: Int = input[1]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
let dir: [(Int, Int)] = [(0, 1), (0, -1), (-1, 0), (1, 0)]  // 오른쪽 왼쪽 위쪽 아래쪽
var completed: Bool = false

var queue: Queue<(Int, Int, Int)> = .init()
queue.enqueue((0, 0, 1))
visited[0][0] = true

inputGraph()
bfs()

func inputGraph() {
    for i in 0..<N {
        let input: [String] = readLine()!.map { String($0) }
        graph[i] = input.compactMap { Int($0) }
    }
}

func bfs() {
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        
        let currY: Int = curr.0
        let currX: Int = curr.1
        let count: Int = curr.2
        
        if currY == N - 1 && currX == M - 1 {
            print(count)
            completed = true
            return
        }
        
        for currDir in dir {
            let nextY: Int = currY + currDir.0
            let nextX: Int = currX + currDir.1
            
            if !completed && isValid(nextY, nextX) && graph[nextY][nextX] == 1 && !visited[nextY][nextX] {
                visited[nextY][nextX] = true
                queue.enqueue((nextY, nextX, count + 1))
            }
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M { return false}
    return true
}
 */

