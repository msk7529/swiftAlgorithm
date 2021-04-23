//
//  Floyd-Warshall.swift
//  Algorithm
//
//  Created by kakao on 2021/04/24.
//
func floyd() {
    var dist: [[Int]] = []  // 인접행렬 입력받을때 인접해있지 않으면 매우 큰 수로 정의
    let N: Int = 0
    
    for k in 0..<N {            // 중간노드
        for i in 0..<N {        // 시작노드
            for j in 0..<N {    // 도착 노드
                if dist[i][j] > dist[i][k] + dist[k][j] {
                    dist[i][j] = dist[i][k] + dist[k][j]
                }
            }
        }
    }
}
