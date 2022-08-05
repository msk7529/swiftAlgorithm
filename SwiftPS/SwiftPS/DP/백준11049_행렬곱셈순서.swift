//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/22.
//
/*
let N: Int = Int(readLine()!)!
var matrix: [(Int, Int)] = []
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: N + 1), count: N + 1)
// dp[i][j]: i~j 까지 연산하는데 드는 최소비용

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    matrix.append((line[0], line[1]))
}

print(excuteDP(left: 0, right: N - 1))

func excuteDP(left: Int, right: Int) -> Int {
    if left == right {
        return 0
    }
    
    if dp[left][right] != -1 {
        return dp[left][right]
    }
    
    dp[left][right] = Int.max
    
    for i in left..<right {
        // 두 부분으로 나눈다.
        dp[left][right] = min(dp[left][right], excuteDP(left: left, right: i) + excuteDP(left: i + 1, right: right) + matrix[left].0 * matrix[i].1 * matrix[right].1)
    }
    
    return dp[left][right]
}
*/
