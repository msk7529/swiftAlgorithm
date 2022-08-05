//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/28.
//
/*
let N: Int = Int(readLine()!)!
var arr: [Int] = Array(repeating: 0, count: N + 1)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 3), count: N + 1)
// dp[i][j] : i번째 계단을, 직전계단에서 j개의 계단을 올라왔을때 점수의 최대갯수

for i in 1...N {
    arr[i] = Int(readLine()!)!
}

var result: Int = excuteDP(curr: 1, upCount: 1)
result = max(result, excuteDP(curr: 2, upCount: 2))
print(result)

func excuteDP(curr: Int, upCount: Int) -> Int {
    if curr == N {
        return arr[curr]
    } else if curr > N {
        return -Int.max
    }
    
    if dp[curr][upCount] != -1 {
        return dp[curr][upCount]
    }
    
    dp[curr][upCount] = 0
    if curr == 1 {
        dp[curr][upCount] = arr[curr] + excuteDP(curr: curr + 1, upCount: 1)
        dp[curr][upCount] = max(dp[curr][upCount], arr[curr] + excuteDP(curr: curr + 2, upCount: 2))
    } else {
        if upCount == 1 {
            dp[curr][upCount] = arr[curr] + excuteDP(curr: curr + 2, upCount: 2)
        } else {
            dp[curr][upCount] = arr[curr] + excuteDP(curr: curr + 1, upCount: 1)
            dp[curr][upCount] = max(dp[curr][upCount], arr[curr] + excuteDP(curr: curr + 2, upCount: 2))
        }
    }
    return dp[curr][upCount]
}
*/
