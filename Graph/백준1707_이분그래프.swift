//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/13.
//
/*
// 이분그래프(Bipartite Graph): 인접한 정점끼리 서로 다른 색으로 칠해서 모든 정점을 두 가지 색으로만 칠할 수 있는 그래프
let T = Int(readLine()!)!
var graph: [[Int]] = []
var visited: [Bool] = []
var color: [Int] = []

for _ in 0..<T {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    let V = tmp[0], E = tmp[1]
    var isBipartiteGraph: Bool = true
    graph = Array(repeating: [], count: V + 1)
    visited = Array(repeating: false, count: V + 1)
    color = Array(repeating: -1, count: V + 1)
    
    for _ in 0..<E {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[line[0]].append(line[1])
        graph[line[1]].append(line[0])
    }
    
    for i in 1...V {
        // 그래프가 비연결 그래프 일 수도 있기 때문에 모든 정점에 대해 확인이 필요하다.
        if !isBipartiteGraph { break }
        
        if !visited[i] {
            visited[i] = true
            color[i] = 0
            if !dfs(curr: i) {
                isBipartiteGraph = false
            }
        }
    }
    
    print(isBipartiteGraph ? "YES" : "NO")
}

func dfs(curr: Int) -> Bool {
    var isBipartiteGraph: Bool = true
    
    for next in graph[curr] {
        if !visited[next] {
            visited[next] = true
            color[next] = color[curr] == 0 ? 1 : 0  // 다음 방문할 정점에 현재정점과 다른 색을 칠한다.
            isBipartiteGraph = isBipartiteGraph && dfs(curr: next)
        } else {
            // 다음 방문할 정점이 이미 방문되었으면서 현재 정점과 같은 색으로 칠해져 있으면 이분그래프가 아닌 것이다.
            if color[next] == color[curr] {
                return false
            }
        }
    }
    return isBipartiteGraph
}
*/
