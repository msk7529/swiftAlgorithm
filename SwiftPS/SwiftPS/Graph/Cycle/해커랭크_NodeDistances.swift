//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/29

/*
 무향그래프를 구성하고, 그 안에서 사이클을 찾아내는 것이 핵심
 사이클 정점들만 찾아낼 수 있으면, 문제가 요구하는 값은 DFS로 쉽게 해결할 수 있음
 */

/*
func nodeDistance(gNodes: Int, gFrom: [Int], gTo: [Int]) -> [Int] {
    var graph: [[Int]] = Array(repeating: [], count: gNodes + 1)
    var visited: [Bool] = Array(repeating: false, count: gNodes + 1)
    var isFinished: [Bool] = Array(repeating: false, count: gNodes + 1)
    var depth: [Int] = Array(repeating: 0, count: gNodes + 1)
    var prev: [Int] = Array(repeating: 0, count: gNodes + 1)
    var isCycleNode: [Bool] = Array(repeating: false, count: gNodes + 1)
    var result: [Int] = Array(repeating: 0, count: gNodes + 1)
    
    for (index, from) in gFrom.enumerated() {
        let to = gTo[index]
        graph[from].append(to)
        graph[to].append(from)
    }
        
    func dfs(curr: Int) {
        visited[curr] = true
        
        for next in graph[curr] {
            if !visited[next] {
                depth[next] = depth[curr] + 1   // 뎁스를 높여주고
                prev[next] = curr   // 싸이클 정점을 찾기 위함
                dfs(curr: next)
            } else if !isFinished[next] && depth[curr] >= depth[next] + 2 {   // 무향그래프에서 싸이클은 최소 3개 정점으로 이루어져야 함
                findCycle(curr: curr, finish: next)     // curr ~ finish 까지 거꾸로 올라가면서 싸이클 정점을 구함
                return
            }
        }
        
        isFinished[curr] = true     // 이거 사실 굳이 없어도 되긴 함. 사이클이 한 개 밖에 없어서 그런가..?
    }
    
    func findCycle(curr: Int, finish: Int) {
        isCycleNode[curr] = true
        
        if curr == finish { return }
        
        findCycle(curr: prev[curr], finish: finish)
    }
    
    dfs(curr: 1)    // 임의의 점에서 시작해서 일단 사이클을 찾는다.

    for i in 1...gNodes where isCycleNode[i] {
        // 싸이클에 포함되지 않은 정점들에 대해 dfs를 수행하면서 depth를 구한다.
        visited = Array(repeating: false, count: gNodes + 1)
        getDistance(curr: i)
    }
    
    func getDistance(curr: Int) {
        visited[curr] = true
        
        for next in graph[curr] where !visited[next] && !isCycleNode[next] {
            result[next] = result[curr] + 1
            getDistance(curr: next)
        }
    }
    
    result.removeFirst()
    return result
}

print(nodeDistance(gNodes: 6, gFrom:  [1, 2, 1, 3, 1, 2], gTo:  [2, 3, 3, 5, 4, 6]))
print(nodeDistance(gNodes: 4, gFrom: [1, 4, 4, 1], gTo: [3, 3, 2, 2]))
print(nodeDistance(gNodes: 6, gFrom: [1,3,6,2,1,3], gTo: [2,4,4,3,3,5]))
*/
