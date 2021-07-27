//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/28.
//
/*
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
var graph: [[(Int, Int)]] = Array(repeating: [], count: N + 1)
var start: Int = 0
var finish: Int = 0
var minCost: Int = 1
var maxCost: Int = 0
var result: Int = 0

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (u, v, c) = (line[0], line[1], line[2])
    graph[u].append((v, c))
    graph[v].append((u, c))
    maxCost = max(maxCost, c)
}

input = readLine()!.split(separator: " ").map { Int(String($0))! }
start = input[0]
finish = input[1]

while maxCost >= minCost {
    let mid = (minCost + maxCost) / 2
    
    if excuteBFS(limitCost: mid) {
        // finish에 도달할 수 있으면 하한선을 높여본다.
        result = max(result, mid)
        minCost = mid + 1
    } else {
        // 상한선을 낮춰본다.
        maxCost = mid - 1
    }
}

print(result)

func excuteBFS(limitCost: Int) -> Bool {
    var visited: [Bool] = Array(repeating: false, count: N + 1)
    var queue: Queue<Int> = .init()
    
    queue.enqueue(start)
    visited[start] = true
    
    while !queue.isEmpty {
        let curr = queue.dequeue()!
        
        for next in graph[curr] {
            if !visited[next.0] && next.1 >= limitCost {
                if next.0 == finish { return true }
                
                visited[next.0] = true
                queue.enqueue(next.0)
            }
        }
    }
    return false
}
*/
