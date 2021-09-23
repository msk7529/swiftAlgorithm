//
//  Dijkstra.swift
//  Algorithm
//
//  Created by kakao on 2021/04/23.
//
func dijkstra_API(src: Int, numOfVertex: Int) -> [Int] {
    // 시작노드로부터 모든 노드까지의 최단거리를 계산하여 배열형태로 반환한다.
    
    typealias Edge = (dest: Int, cost: Int)     // 구조체로 정의하는 것보다 튜플로 정의하는 것이 속도가 훨씬 빠름.
    // dest: 현재 방문 노드 index, cost: 시작점부터 현재노드까지 걸린 총 비용
    // graph와 pq에서 사용이 다르므로 주의
    
    var dist: [Int] = Array(repeating: Int.max, count: numOfVertex + 1)
    var pq: PriorityQueue<Edge> = .init(comparer: { $0.cost < $1.cost })
    let graph: [[Edge]] = []     // 빌드성공용 임시배열. 입력값 받을때 구성해야함.
    // graph[i].dest: i와 연결된 노드 인덱스 번호, graph[i].cost: 해당 간선의 비용
    
    pq.enqueue(Edge(src, 0))
    dist[src] = 0
    
    while !pq.isEmpty {
        guard let curr = pq.dequeue() else { return dist }
        
        if dist[curr.dest] < curr.cost { continue }
        
        for next in graph[curr.dest] {
            // graph: (Int, Int). 첫번째는 연결된 노드번호, 두번째는 해당노드와의 거리
            if curr.cost + next.cost < dist[next.dest] {
                dist[next.dest] = curr.cost + next.cost
                pq.enqueue(Edge(next.dest, curr.cost + next.cost))
            }
        }
    }
    
    return dist
}
 
