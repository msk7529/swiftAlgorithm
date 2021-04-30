//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/01.
//
/*
import Foundation

var T: Int = Int(readLine()!)!
var I: Int = 0
var visited: [[Bool]] = []
var start: (Int, Int) = (0, 0)
var finish: (Int, Int) = (0, 0)
let dir: [(Int, Int)] = [(2,1),(1,2),(-1,2),(-2,1),(-2,-1),(-1,-2),(1,-2),(2,-1)]
var num: Int = 0
var queue: Queue<(Int, Int, Int)> = .init()

func input() {
    for _ in 0..<T {
        while !queue.isEmpty {
            queue.dequeue()
        }
        
        num = 0
        I = Int(readLine()!)!
        let line1 = readLine()!.split(separator: " ").map { Int(String($0))! }
        start = (line1[0], line1[1])
        let line2 = readLine()!.split(separator: " ").map { Int(String($0))! }
        finish = (line2[0], line2[1])
        
        if start == finish {
            print("0")
            continue
        }
        
        visited = Array(repeating: Array(repeating: false, count: I), count: I)
        
        bfs()
        print(num)
    }
}

func bfs() {
    queue.enqueue((start.0, start.1, 0))
    visited[start.0][start.1] = true
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        
        for currDir in dir {
            let nextX = curr.0 + currDir.0
            let nextY = curr.1 + currDir.1
            
            if isValid(nextX, nextY) && !visited[nextX][nextY] {
                if (nextX, nextY) == finish {
                    num = curr.2 + 1
                    return
                }
                
                visited[nextX][nextY] = true
                queue.enqueue((nextX, nextY, curr.2 + 1))
            }
        }
    }
}

func isValid(_ x: Int, _ y: Int) -> Bool {
    if x < 0 || x >= I || y < 0 || y >= I {
        return false
    }
    return true
}

input()
 */
