//
//  백준1260_DFS와BFS.swift
//  Algorithm
//
//  Created by kakao on 2021/04/12.
//

/*
 
 let input: [Int] = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
 let N: Int = input[0]
 let M: Int = input[1]
 let V: Int = input[2]
 var visited: [Int] = Array(repeating: 0, count: N + 1)
 var graph: [[Int]] = Array(repeating: [], count: N + 1)

 for _ in 1...M {
     let edge: [Int] = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
     graph[edge[0]].append(edge[1])
     graph[edge[1]].append(edge[0])
 }

 for v1 in 1...N {
     graph[v1].sort()
 }

 // dfs

 func dfs(v: Int) {
     visited[v] = 1
     print(v, terminator: " ")
     
     for next in graph[v] {
         if visited[next] == 0 {
             dfs(v: next)
         }
     }
 }

 var queue: Queue<Int> = .init()
 visited = Array(repeating: 0, count: N + 1)

 queue.enqueue(V)
 visited[V] = 1

 func bfs(v: Int) {
     while !queue.isEmpty {
         guard let curr = queue.dequeue() else { return }
         print(curr, terminator: " ")
         
         for next in graph[curr] {
             if visited[next] == 0 {
                 visited[next] = 1
                 queue.enqueue(next)
             }
         }
     }
 }

 dfs(v: V)
 print("")
 bfs(v: V)

*/
