//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/25.
//
/*
typealias Node = (dest: Int, cost: Int)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], E = input[1]
var graph: [[Node]] = Array(repeating: [], count: N + 1)
var result: Int = .max

for _ in 0..<E {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let u = line[0], v = line[1], c = line[2]
    graph[u].append(Node(v, c))
    graph[v].append(Node(u, c))
}

let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let v1 = input2[0], v2 = input2[1]

result = dijkstra(start: 1, end: v1) + dijkstra(start: v1, end: v2) + dijkstra(start: v2, end: N)
result = min(result, dijkstra(start: 1, end: v2) + dijkstra(start: v2, end: v1) + dijkstra(start: v1, end: N))
print(result >= 109876543210 ? "-1" : result)

func dijkstra(start: Int, end: Int) -> Int {
    var dist: [Int] = Array(repeating: 109876543210, count: N + 1)
    var pq: PriorityQueue<Node> = .init(comparer: { $0.cost < $1.cost })
    
    dist[start] = 0
    pq.enqueue(Node(start, 0))
    
    while !pq.isEmpty {
        let curr = pq.dequeue()!
        
        if dist[curr.dest] < curr.cost { continue }
                
        for next in graph[curr.dest] {
            if dist[next.dest] > curr.cost + next.cost {
                dist[next.dest] = curr.cost + next.cost
                pq.enqueue(Node(next.dest, curr.cost + next.cost))
            }
        }
    }
    
    return dist[end]
}
*/
