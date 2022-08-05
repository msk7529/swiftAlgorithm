//
//  Kruskal.swift
//  Algorithm
//
//  Created by kakao on 2021/05/02.
//
private struct EdgeInfo_Kruskal {
    var u: Int
    var v: Int
    var weight: Int
}

private func kruskal(edges: [EdgeInfo_Kruskal], n: Int) -> Int {
    // 가장 적은 비용으로 모든 노드를 연결하기 위해 사용하는 알고리즘. MST(최소신장트리)를 만들기 위한 대표적인 알고리즘
    // 간선의 가중치를 기준으로 정렬한 뒤, union-find를 통해 트리를 구성한다.
    // 시간복잡도는 사실상 정렬 알고리즘에 좌우되며, 퀵소트와 같은 효율적인 알고리즘을 사용하면 O(eloge).
    var unionFind: UnionFind = .init(numOfVertex: n)
    var result: Int = 0
    
    // edges를 가중치가 작은순서대로 정렬한다.
    let sortedEdges: [EdgeInfo_Kruskal] = edges.sorted { $0.weight < $1.weight }

    for edge in sortedEdges {
        if unionFind.union(edge.u, edge.v) {
            result += edge.weight
        }
    }
    
    return result
}
