//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/26.
//
/*
let V = Int(readLine()!)!
var graph: [[(Int, Int)]] = Array(repeating: [], count: V + 1)
var visited: [Bool] = Array(repeating: false, count: V + 1)
var p1: Int = 0
var p2: Int = 0
var dist: Int = 0

for _ in 0..<V {
    var line = readLine()!.split(separator: " ").map { Int(String($0))! }
    line.removeLast()
    let u = line.removeFirst()
    
    for (index, v) in line.enumerated() {
        if index.isMultiple(of: 2) {
            graph[u].append((v, line[index + 1]))
        }
    }
}

visited[1] = true
dfs(curr: 1, sumCost: 0, isFirstDFS: true)

visited = Array(repeating: false, count: V + 1)
visited[p1] = true
dist = 0
dfs(curr: p1, sumCost: 0, isFirstDFS: false)

print(dist)

func dfs(curr: Int, sumCost: Int, isFirstDFS: Bool) {
    if sumCost > dist {
        dist = sumCost
        
        if isFirstDFS {
            p1 = curr
        } else {
            p2 = curr
        }
    }
    
    for (next, cost) in graph[curr] {
        if !visited[next] {
            visited[next] = true
            dfs(curr: next, sumCost: sumCost + cost, isFirstDFS: isFirstDFS)
        }
    }
}
*/
