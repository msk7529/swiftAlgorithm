//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/03.
//
//import Foundation
/*
var n: Int = 0
var a: Int = 0
var b: Int = 0
var m: Int = 0
var graph: [[Int]] = []
var visited: [Bool] = []
var queue: Queue<Int> = .init()

func input() {
    n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    a = input[0]
    b = input[1]
    m = Int(readLine()!)!
    
    graph = Array(repeating: [], count: n+1)
    visited = Array(repeating: false, count: n+1)
    
    for _ in 0..<m {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[line[0]].append(line[1])
        graph[line[1]].append(line[0])
    }
    
    queue.enqueue(a)
    visited[a] = true
    
    print(bfs())
}

func bfs() -> Int {
    var num: Int = 0
    while !queue.isEmpty {
        num += 1
        for _ in 0..<queue.count {
            guard let curr = queue.dequeue() else { return -1 }
            
            for next in graph[curr] {
                if next == b {
                    return num
                }
                
                if !visited[next] {
                    visited[next] = true
                    queue.enqueue(next)
                }
            }
        }
    }
    return -1
}

input()
*/
