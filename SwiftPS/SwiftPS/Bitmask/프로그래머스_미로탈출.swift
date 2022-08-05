//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
/*
1. 최단거리를 구하기 위해서 다익스트라 알고리즘을 이용한다.
2. 트랩상태를 저장하기 위해, 비트마스킹을 이용한다.
3. 트랩상태에 따라 원본그래프의 간선 방향이 바뀌므로, 정방향그래프와 역방향그래프를 구성한다.
4. 현재노드와 다음노드 둘 중 하나가 트랩이면서 활성화되어있는 경우에만 역방향그래프 정보를 이용한다. 두개가 모두 트랩이면서 활성화되어있다면, 정방향그래프 정보를 이용해야한다.
*/
struct Node: Comparable {
    static func < (lhs: Node, rhs: Node) -> Bool {
        lhs.cost < rhs.cost

    }
    
    let node: Int   // 현재 방문 노드 index
    let cost: Int   // 시작점부터 현재노드까지 걸린 총 비용
    let trapState: Int  // 현재 함정상태
}

func solution(_ n:Int, _ start:Int, _ end:Int, _ roads:[[Int]], _ traps:[Int]) -> Int {
    var graph: [[(v: Int, cost: Int)]] = Array(repeating: [], count: n + 1)
    var inverseGraph: [[(v: Int, cost: Int)]] = Array(repeating: [], count: n + 1)
    var trapIndexDic: [Int: Int] = [:]  // trap에 해당하는 index를 얻기 위함.
    var pq: PriorityQueue<Node> = .init()
    var dist: [[Int]] = Array(repeating: Array(repeating: Int.max, count: 1 << traps.count), count: n + 1)  // dist[i][state]: start노드부터, trap 상태정보가 state인 i노드까지의 최단거리
    
    for road in roads {
        graph[road[0]].append((v: road[1], cost: road[2]))
        inverseGraph[road[1]].append((v: road[0], cost: road[2]))
    }
    
    for i in 0...n {
        trapIndexDic[i] = -1    // trap이 없는 곳은 index를 임의로 -1로 지정
    }
    
    var trapIndex: Int = 0
    for trap in traps {
        // 트랩 각각에 고유한 index를 지정
        trapIndexDic[trap] = trapIndex
        trapIndex += 1
    }
    
    pq.enqueue(Node(node: start, cost: 0, trapState: 0))
    dist[start][0] = 0
    
    while !pq.isEmpty {
        guard let now = pq.dequeue() else { return Int.max }
        
        if now.node == end { return dist[end][now.trapState] }
        
        if dist[now.node][now.trapState] < now.cost { continue }
        
        let trapIndex = trapIndexDic[now.node]!
        
        if trapIndex == -1 || now.trapState & (1 << trapIndex) == 0 {
            // 현재 노드가 트랩이 아니거나, 트랩인데 비활성화되어있는 경우
            
            for next in graph[now.node] {
                let nextNodeTrapIndex = trapIndexDic[next.v]!
                if nextNodeTrapIndex == -1 {
                    // 다음 노드가 트랩이 아닌 경우, 정방향 간선을 이용한다.
                    if now.cost + next.cost < dist[next.v][now.trapState] {
                        dist[next.v][now.trapState] = now.cost + next.cost
                        pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: now.trapState))
                    }
                } else {
                    // 다음 노드가 트랩인 경우
                    if now.trapState & (1 << nextNodeTrapIndex) == 0 {
                        // 트랩이 활성화 되어 있지 않은 경우, 정방향 간선을 이용한다.
                        // 방문할 트랩을 활성화
                        let nextTrapState = now.trapState | (1 << nextNodeTrapIndex)
                        if now.cost + next.cost < dist[next.v][nextTrapState] {
                            dist[next.v][nextTrapState] = now.cost + next.cost
                            pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: nextTrapState))
                        }
                    } else {
                        // 트랩이 활성화 되어있는 경우, 아래의 for문에서 처리해야한다.
                    }
                }
            }
            
            for next in inverseGraph[now.node] {
                // 다음 노드가 트랩이면서 활성화되어있는 경우, 역방향 간선을 이용한다.
                let nextNodeTrapIndex = trapIndexDic[next.v]!
                if nextNodeTrapIndex != -1 && (now.trapState & (1 << nextNodeTrapIndex) > 0) {
                    let nextTrapState = now.trapState & ~(1 << nextNodeTrapIndex)
                    // 방문할 트랩을 비활성화
                    if now.cost + next.cost < dist[next.v][nextTrapState] {
                        dist[next.v][nextTrapState] = now.cost + next.cost
                        pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: nextTrapState))
                    }
                }
            }
        } else {
            // 현재 노드가 트랩이면서 활성화 되어있는 경우
            
            for next in inverseGraph[now.node] {
                let nextNodeTrapIndex = trapIndexDic[next.v]!
                if nextNodeTrapIndex == -1 {
                    // 다음 노드가 트랩이 아닌 경우, 역방향 간선을 이용한다.
                    if now.cost + next.cost < dist[next.v][now.trapState] {
                        dist[next.v][now.trapState] = now.cost + next.cost
                        pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: now.trapState))
                    }
                } else {
                    // 다음 노드가 트랩인 경우
                    if now.trapState & (1 << nextNodeTrapIndex) == 0 {
                        // 트랩이 활성화 되어 있지 않은 경우, 역방향 간선을 이용한다.
                        let nextTrapState = now.trapState | (1 << nextNodeTrapIndex)
                        // 방문할 트랩을 활성화
                        if now.cost + next.cost < dist[next.v][nextTrapState] {
                            dist[next.v][nextTrapState] = now.cost + next.cost
                            pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: nextTrapState))
                        }
                    } else {
                        // 트랩이 활성화 되어있는 경우, 아래의 for문에서 처리해야한다.
                    }
                }
            }
            
            for next in graph[now.node] {
                // 다음 노드가 트랩이면서, 활성화 되어있는 경우에는 정방향 간선을 이용한다.
                let nextNodeTrapIndex = trapIndexDic[next.v]!
                if nextNodeTrapIndex != -1 {
                    if now.trapState & (1 << nextNodeTrapIndex) > 0 {
                        let nextTrapState = now.trapState & ~(1 << nextNodeTrapIndex)
                        // 방문할 트랩을 비활성화
                        if now.cost + next.cost < dist[next.v][nextTrapState] {
                            dist[next.v][nextTrapState] = now.cost + next.cost
                            pq.enqueue(Node(node: next.v, cost: now.cost + next.cost, trapState: nextTrapState))
                        }
                    }
                }
            }
        }
    }
    return Int.max
}

print(solution(3, 1, 3, [[1,2,2],[3,2,3]], [2]))
print(solution(4, 1, 4, [[1,2,1],[3,2,1],[2,4,1]], [2,3]))
*/
