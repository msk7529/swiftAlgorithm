//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/24.
//
/*
typealias Edge = (dest: Int, cost: Int) // 구조체보다 튜플로 정의하는것이 훨씬 빠름. 구조체로 하니까 시간초과 ..

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1], X = input[2]
var graph: [[Edge]] = Array(repeating: [], count: N + 1)
var maxTime: Int = 0

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let u = line[0], v = line[1], cost = line[2]
    graph[u].append(Edge(v, cost))
}

for i in 1...N {
    maxTime = max(maxTime, dijkstra(start: i, end: X) + dijkstra(start: X, end: i))
}

print(maxTime)

func dijkstra(start: Int, end: Int) -> Int {
    var pq: PriorityQueue<Edge> = .init(comparer: { $0.cost < $1.cost })
    var dist: [Int] = Array(repeating: 9876543210, count: N + 1)
    
    pq.enqueue(Edge(start, 0))
    dist[start] = 0
    
    while !pq.isEmpty {
        let curr = pq.dequeue()!
        
        if dist[curr.dest] < curr.cost { continue }
        
        for next in graph[curr.dest] {
            if dist[next.dest] > curr.cost + next.cost {
                dist[next.dest] = curr.cost + next.cost
                pq.enqueue((Edge(next.dest, curr.cost + next.cost)))
            }
        }
    }
    return dist[end]
}
*/
