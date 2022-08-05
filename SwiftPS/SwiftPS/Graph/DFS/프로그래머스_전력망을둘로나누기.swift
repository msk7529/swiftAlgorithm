//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/06.
//
/*
var graph: [[Int]] = []
var visited: [Bool] = []
var result: Int = .max

func solution(_ n: Int, _ wires: [[Int]]) -> Int {
    graph = Array(repeating: [], count: n + 1)
    visited = Array(repeating: false, count: n + 1)
    
    for wire in wires {
        graph[wire[0]].append(wire[1])
        graph[wire[1]].append(wire[0])
    }
    
    // dfs를 n번 수행하는데, 매 수행마다 1~n 인덱스의 visited를 true로 설정하여 수행한다. 이렇게 하면 visited된 노드와 이어진 반대편 노드들은 탐색하지 않게되어 끊어진 노드들의 갯수를 구할 수 있다.
    visited[1] = true
    var cnt = dfs(curr: 2)
    result = abs(cnt - (n - cnt))
    
    for i in 2...n {
        visited = Array(repeating: false, count: n + 1)
        visited[i] = true
        cnt = dfs(curr: 1)
        result = min(result, abs(cnt - (n - cnt)))
    }
    
    return result
}

func dfs(curr: Int) -> Int {
    var cnt = 0
    for next in graph[curr] {
        if !visited[next] {
            visited[next] = true
            cnt += 1 + dfs(curr: next)
        }
    }
    return cnt
}

print(solution(9, [[1,3],[2,3],[3,4],[4,5],[4,6],[4,7],[7,8],[7,9]]))
//print(solution(4, [[1,2],[2,3],[3,4]]))
//print(solution(7, [[1,2],[2,7],[3,7],[3,4],[4,5],[6,7]]))
*/
