//
//  Dijkstra.swift
//  Algorithm
//
//  Created by kakao on 2021/04/23.
//

struct Node: Comparable {
    // 우선순위큐 안에 들어갈 원소
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost

    }
    
    var node: Int   // 현재 방문 노드 index
    var cost: Int   // 시작점부터 현재노드까지 걸린 총 비용
}

func dijkstra(src: Int, numOfVertex: Int) -> [Int] {
    // 시작노드로부터 모든 노드까지의 최단거리를 계산하여 배열형태로 반환한다.
    var dist: [Int] = Array(repeating: Int.max, count: numOfVertex + 1)
    var pq: PriorityQueue<Node> = .init()
    
    pq.enqueue(Node(node: src, cost: 0))
    dist[src] = 0
    
    while !pq.isEmpty {
        guard let now = pq.dequeue() else { return dist }
        
        if dist[now.node] < now.cost { continue }
        
        for next in graph[now.node] {
            // graph: (Int, Int). 첫번째는 연결된 노드번호, 두번째는 해당노드와의 거리
            if now.cost + next.1 < dist[next.0] {
                dist[next.0] = now.cost + next.1
                pq.enqueue(Node(node: next.0, cost: now.cost + next.1))
            }
        }
    }
    
    return dist
}
 
