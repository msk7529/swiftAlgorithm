//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
let N = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 1001)    // dp[i]: 0이면 상근이가 이기는 경우
dp[1] = 1
dp[2] = 0
dp[3] = 1
dp[4] = 0

// Bottom-Up
for i in stride(from: 5, through: N, by: 1) {
    if dp[i - 1] == 1 || dp[i - 3] == 1 || dp[i - 4] == 1 {
        // 1개, 3개, 4개를 가져갈 때 상근이가 지는 경우가 하나라도 있으면 상근이는 이기게 된다.
        dp[i] = 0
    } else {
        dp[i] = 1
    }
}

print(dp[N] == 0 ? "SK" : "CY")

// Top-Down
func excuteDP(num: Int) -> Int {
    if num <= 0 { return 0 }
    
    if dp[num] != -1 {
        return dp[num]
    }
    
    let win = excuteDP(num: num - 1) + excuteDP(num: num - 3) + excuteDP(num: num - 4)
    if win > 0 {
        dp[num] = 0
    } else {
        dp[num] = 1
    }
    return dp[num]
}
*/
