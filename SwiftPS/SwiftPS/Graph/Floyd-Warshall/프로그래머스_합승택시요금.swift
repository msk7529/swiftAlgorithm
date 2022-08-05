//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/01.
//
/*
func solution(_ n: Int, _ s: Int, _ a: Int, _ b: Int, _ fares: [[Int]]) -> Int {
    var dist: [[Int]] = Array(repeating: Array(repeating: 987654321, count: n + 1), count: n + 1)
    var result: Int = .max
    
    for fare in fares {
        dist[fare[0]][fare[1]] = fare[2]
        dist[fare[1]][fare[0]] = fare[2]
    }
    
    for i in 1...n {
        dist[i][i] = 0
    }

    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if dist[i][j] > dist[i][k] + dist[k][j] {
                    dist[i][j] = dist[i][k] + dist[k][j]
                }
            }
        }
    }
            
    for i in 1...n {
        // 함께 택시를 타고간 마지막지점을 i로 놓고, s->i, i->a, i->b의 합을 구한다. 택시를 타지않는 경우도 함께 고려되는 for문
        result = min(result, dist[s][i] + dist[i][a] + dist[i][b])
    }
    
    return result
}


print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]))
print(solution(7, 3, 4, 1, [[5, 7, 9], [4, 6, 4], [3, 6, 1], [3, 2, 3], [2, 1, 6]]))
print(solution(6, 4, 5, 6, [[2,6,6], [6,3,7], [4,6,7], [6,5,11], [2,5,12], [5,3,20], [2,4,8], [4,3,9]]))
*/
