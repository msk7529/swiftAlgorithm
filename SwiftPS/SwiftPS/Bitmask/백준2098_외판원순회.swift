//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/20.
//

/*
도시의 수가 최대 16이므로, 일반적인 DFS를 이용하면 16! 시간초과가 발생한다.
이를 해결하기 위해서 최적화를 해야하는데 2가지 방법을 이용한다.
1. DP를 통해 분기 횟수를 최적화
2. DP배열을 구현하기 위해, 현재까지 방문한 도시까지 모두 표현할 수 있게 비트마스킹을 이용
*/
/*
let INF: Int = 987654321
let N: Int = Int(readLine()!)!
var W: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var dp: [[Int]] = Array(repeating: Array(repeating: INF, count: (1 << N) - 1), count: N)
// dp[i][j] : j 상태까지 방문하고(비트마스킹으로 표현), 현재 i도시에 위치하고 있을 때, 방문한 경로의 최소 가중치합

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<N {
        W[i][j] = line[j]
    }
}

func excuteDP(curr: Int, state: Int) -> Int {
    if state == (1 << N) - 1 {
        // 모든 도시를 방문한 경우
        if W[curr][0] == 0 {
            // 이 문제에서는 항상 순회할 수 있는 입력만 들어오므로, 여기가 수행될 일은 없다.
            return INF
        }
        return W[curr][0]
    }
    
    if dp[curr][state] != INF {
        return dp[curr][state]
    }
    
    for i in 0..<N {
        if W[curr][i] == 0 || (state & (1 << i) != 0) {
            // 연결된 길이 없는 도시이거나, 이미 방문한 도시이면 패스
            continue
        }
        
        dp[curr][state] = min(dp[curr][state], W[curr][i] + excuteDP(curr: i, state: state | (1 << i)))
    }
    
    return dp[curr][state]
}

print(excuteDP(curr: 0, state: 1 << 0))     // 0번 도시에서 출발하므로, 0번도시는 방문한 상태로 한다.
// 번외로, 어느 도시에서 출발하더라도 TSP 최소비용은 같다.
*/
