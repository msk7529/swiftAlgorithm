//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/16.
//
/*
let N: Int = Int(readLine()!)!
var edge: [(Int, Int)] = []
var dp: [Int] = Array(repeating: -1, count: 501)
var result: Int = 0

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    edge.append((line[0], line[1]))
}

edge.sort { $0.0 < $1.0 }   // A 전봇대를 기준으로 오름차순 정렬

for i in 0..<N {
    result = max(result, excuteDP(curr: i))     // 모든 A 전봇대를 기준으로 체크해야함.
}
print(N - result)

func excuteDP(curr: Int) -> Int {
    if dp[curr] != -1 {
        return dp[curr]
    }
    
    dp[curr] = 1
        
    for next in stride(from: curr + 1, through: N - 1, by: 1) {
        if edge[curr].1 < edge[next].1 {
            dp[curr] = max(dp[curr], 1 + excuteDP(curr: next))
        }
    }
    
    return dp[curr]
}
*/
