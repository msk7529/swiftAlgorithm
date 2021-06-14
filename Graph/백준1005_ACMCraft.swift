//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/15.
//
/*
import Foundation

let file: FileIO = .init()
let T: Int = file.readInt()
var N: Int = 0
var K: Int = 0
var W: Int = 0
var time: [Int] = []
var graph: [[Int]] = []

var result: [Int] = []  // result[i] : i번 건물을 짓기 시작하는 데 걸리는 최소 시간
var indegree: [Int] = []
var queue: Queue<Int> = .init()

for _ in 0..<T {
    queue = .init()
    
    N = file.readInt()
    K = file.readInt()
    indegree = Array(repeating: 0, count: N + 1)
    graph = Array(repeating: [], count: N + 1)
    result = Array(repeating: 0, count: N + 1)
    time = []
    
    time.append(0)
    for _ in 1...N {
        time.append(file.readInt())
    }
    
    for _ in 0..<K {
        let u: Int = file.readInt()
        let v: Int = file.readInt()
        graph[u].append(v)
        indegree[v] += 1
    }
    
    W = file.readInt()
    
    if indegree[W] == 0 {
        print(time[W])
        continue
    }
    
    for i in 1...N {
        if indegree[i] == 0 {
            queue.enqueue(i)
        }
    }
    
    while indegree[W] > 0 {
        let curr: Int = queue.dequeue()!
        
        for next in graph[curr] {
            result[next] = max(result[next], result[curr] + time[curr])
            indegree[next] -= 1
            
            if indegree[next] == 0 {
                queue.enqueue(next)
            }
        }
    }
    
    print(result[W] + time[W])
}
*/
