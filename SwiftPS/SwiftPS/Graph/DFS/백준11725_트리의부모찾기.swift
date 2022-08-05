//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/07.
//
/*
let N = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: [], count: N + 1)
var visited: [Bool] = Array(repeating: false, count: N + 1)
var parent: [Int] = Array(repeating: 0, count: N + 1)
var result: String = ""

for _ in 0..<N-1 {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0])
}

visited[1] = true

dfs(curr: 1)

for i in 2...N {
    result += "\(parent[i])\n"
}
result.removeLast()

print(result)

func dfs(curr: Int) {
    for next in graph[curr] {
        if !visited[next] {
            visited[next] = true
            parent[next] = curr
            dfs(curr: next)
        }
    }
}
*/
