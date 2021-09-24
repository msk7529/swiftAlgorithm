//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/25.
//
/*
// 트리의 지름을 구하는 방법
// - 임의의 하나의 정점에서 DFS를 수행해서 가장 먼 정점을 구함
// - 해당 정점에서 다시 DFS를 수행해서 가장 먼 정점과의 거리를 구함. 이 값이 지름
// https://koosaga.com/14
let n = Int(readLine()!)!
var graph: [[(Int, Int)]] = Array(repeating: [], count: n + 1)
var visited: [Bool] = Array(repeating: false, count: n + 1)
var p1: Int = 0
var p2: Int = 0
var dist: Int = 0

for _ in 0..<n-1 {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let p = line[0], c = line[1], d = line[2]
    graph[p].append((c, d))
    graph[c].append((p, d))
}

visited[1] = true
dfs(curr: 1, total: 0, isFirst: true)

visited = Array(repeating: false, count: n + 1)
dist = 0
visited[p1] = true
dfs(curr: p1, total: 0, isFirst: false)

print(dist)

func dfs(curr: Int, total: Int, isFirst: Bool) {
    if total > dist {
        dist = total
        
        if isFirst {
            p1 = curr
        } else {
            p2 = curr
        }
    }
    
    for next in graph[curr] {
        if !visited[next.0] {
            visited[next.0] = true
            dfs(curr: next.0, total: total + next.1, isFirst: isFirst)
        }
    }
}
*/
