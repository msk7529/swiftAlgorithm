//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/02.
//
/*
import Foundation

let file: FileIO = .init()
var N: Int = file.readInt()
var M: Int = file.readInt()
var graph: [[Int]] = []
var inDegree: [Int] = []
var queue: Queue<Int> = .init()
var result: [Int] = []

func input() {
    graph = Array(repeating: [], count: N + 1)
    inDegree = Array(repeating: 0, count: N + 1)
    
    for _ in 0..<M {
        let u = file.readInt()
        let v = file.readInt()
        graph[u].append(v)
        inDegree[v] += 1
    }
    
    for i in 1...N {
        if inDegree[i] == 0 {
            queue.enqueue(i)
        }
    }
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        
        result.append(curr)
        
        for next in graph[curr] {
            inDegree[next] -= 1
            if inDegree[next] == 0 {
                queue.enqueue(next)
            }
        }
    }
}

input()

let resultStr = result.map { String($0) }.joined(separator: " ")
print(resultStr)
*/
