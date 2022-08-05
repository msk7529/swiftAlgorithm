//
//  UnionFind.swift
//  Algorithm
//
//  Created by kakao on 2021/05/01.
//

struct UnionFind {
    var parent: [Int] = []
    var rank: [Int]     // 트리의 높이
    var size: [Int]     // size[i]: i가 속한 그룹의 크기
    
    init(numOfVertex: Int) {
        for i in 0...numOfVertex {
            parent.append(i)
        }
        rank = Array(repeating: 0, count: numOfVertex + 1)
        size = Array(repeating: 1, count: numOfVertex + 1)
    }
    
    // 경로압축(Path Compression)을 이용한 find 최적화. O(logN)
    mutating func find(_ node: Int) -> Int {
        if node != parent[node] {
            // find하면서 만난 모든 값의 부모 노드를 root로 만든다.
            parent[node] = find(parent[node])
        }
        return parent[node]
    }
    
    // rank를 이용한 union 최적화
    @discardableResult
    mutating func union(_ nodeU: Int, _ nodeV: Int) -> Bool {
        let rootU: Int = find(nodeU)
        let rootV: Int = find(nodeV)    // 각각의 루트노드를 찾고,
        
        if rootU == rootV { return false }    // 두 노드의 root가 같으면 합칠 필요가 없다.
        
        // 항상 높이가 더 낮은 트리를 높이가 높은 트리 밑에 넣는다.
        if rank[rootU] > rank[rootV] {
            parent[rootV] = rootU
            size[rootU] += size[rootV]
        } else {
            parent[rootU] = rootV
            size[rootV] += size[rootU]
            
            if rank[rootU] == rank[rootV] {
                // 만약 높이가 같다면, 합친후 높이 + 1
                rank[rootV] += 1
            }
        }
        return true
    }
}
