//
//  TopologySort.swift
//  Algorithm
//
//  Created by kakao on 2021/05/02.
//

private func topologySort() -> [Int] {
    let N: Int = 0
    let graph: [[Int]] = []
    var indegree: [Int] = []
    var queue: Queue<Int> = .init()
    // graph(인접리스트), indegree는 입력시에 구성완료되었다고 가정
    
    for i in 0..<N {
        // 진입차수가 0인 노드를 큐에 삽입한다.
        if indegree[i] == 0 {
            queue.enqueue(i)
        }
    }
    
    var result: [Int] = []
    
    // 위상정렬이 완전히 수행되려면 정확히 n개의 노드를 방문해야한다.
    for _ in 0..<N {
        // n개를 방문하기 전에 큐가 비어버리면 사이클이 발생한 것이다.
        if queue.isEmpty {
            print("Cycle is occured")
            break
        }
        
        let curr = queue.dequeue()!
        result.append(curr)
        
        for next in graph[curr] {
            indegree[next] -= 1
            if indegree[next] == 0 {
                queue.enqueue(next)
            }
        }
    }
    
    return result   // 위상정렬된 배열
}
