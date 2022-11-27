//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/27

// from, to 배열 정보를 이용해서 유향그래프를 구성하고 delay 배열 원소를 start로 해서 dfs 돌리면 되는 문제

/*
func countDelayedFlights(flightNodes: Int, flightFrom: [Int], flightTo: [Int], delayed: [Int]) -> [Int] {
    var graph: [[Int]] = Array(repeating: [], count: flightNodes + 1)
    var visited: [Bool] = Array(repeating: false, count: flightNodes + 1)
    var result: Set<Int> = .init()
    
    for i in 0..<flightFrom.count {
        graph[flightTo[i]].append(flightFrom[i])
    }
    
    for start in delayed {
        if !visited[start] {
            visited[start] = true
            dfs(curr: start)
        }
    }
    
    func dfs(curr: Int) {
        result.insert(curr)
        
        for next in graph[curr] where !visited[next] {
            visited[next] = true
            dfs(curr: next)
        }
    }
    
    return result.sorted()
}

print(countDelayedFlights(flightNodes: 4, flightFrom: [1, 2, 3, 1], flightTo: [4, 1, 2, 3], delayed: [1]))
print(countDelayedFlights(flightNodes: 5, flightFrom: [1, 1, 2, 3, 4], flightTo: [2, 4, 3, 5, 5], delayed: [2, 4]))
*/
