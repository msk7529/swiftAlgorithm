//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
let N = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: [], count: N + 1)
var visited: [Bool] = Array(repeating: false, count: N + 1)
var pathCnt: Int = 0

for _ in 0..<N-1 {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0], b = line[1]
    graph[a].append(b)
    graph[b].append(a)
}

visited[1] = true
dfs(curr: 1, depth: 0)

// 리프노드들의 높이를 모두 더한 값이 홀수이면 성원이의 승, 아니면 패
print(pathCnt % 2 == 1 ? "Yes" : "No")

func dfs(curr: Int, depth: Int) {
    var isLeaf = true
    
    for next in graph[curr] {
        if !visited[next] {
            isLeaf = false
            visited[next] = true
            dfs(curr: next, depth: depth + 1)
        }
    }
    
    if isLeaf {
        pathCnt += depth
    }
}
*/
