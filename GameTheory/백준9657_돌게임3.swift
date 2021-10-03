//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/03.
//
/*
let N = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 1001)    // dp[i]: 0이면 상근이가 이기는 경우
dp[1] = 0
dp[2] = 1
dp[3] = 0
dp[4] = 0

for i in stride(from: 5, through: N, by: 1) {
    if dp[i - 1] == 1 || dp[i - 3] == 1 || dp[i - 4] == 1 {
        // 상근이가 이기기 위해서는 1개, 3개, 4개를 가져갈 때 상근이가 이길 경우가 하나라도 있으면 된다.
        dp[i] = 0
    } else {
        dp[i] = 1
    }
}

print(dp[N] == 0 ? "SK" : "CY")
*/
