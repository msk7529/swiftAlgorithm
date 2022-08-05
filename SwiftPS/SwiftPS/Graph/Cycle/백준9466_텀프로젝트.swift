//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/26.
//
/*
let T = Int(readLine()!)!
for _ in 0..<T {
    let n = Int(readLine()!)!
    var graph: [Int] = [0]
    var visited: [Bool] = Array(repeating: false, count: n + 1)
    var isFinished: [Bool] = Array(repeating: false, count: n + 1)
    var cnt: Int = 0
    
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph.append(contentsOf: arr)
    
    for i in 1...n {
        if !visited[i] {
            dfs(curr: i)
        }
    }
    
    print(n - cnt)
    
    func dfs(curr: Int) {
        var next = graph[curr]
        
        if !visited[next] {
            visited[next] = true
            dfs(curr: next)
        } else {
            if !isFinished[next] {
                while next != curr {
                    cnt += 1
                    next = graph[next]
                }
                cnt += 1
            }
        }
        isFinished[next] = true
    }
}
*/
