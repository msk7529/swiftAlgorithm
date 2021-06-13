//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/14.
//
/*
let N: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: N + 1)
// dp[i][0] : i번째 row에 사자가 없는 경우
// dp[i][1] : i번째 row 왼쪽에 사자가 있는 경우
// dp[i][2] : i번쨰 row 오른쪽에 사자가 있는 경우

dp[1][0] = 1
dp[1][1] = 1
dp[1][2] = 1

for i in stride(from: 2, through: N, by: 1) {
    dp[i][0] = (dp[i-1][0] + dp[i-1][1] + dp[i-1][2]) % 9901
    dp[i][1] = (dp[i-1][0] + dp[i-1][2]) % 9901
    dp[i][2] = (dp[i-1][0] + dp[i-1][1]) % 9901
}

print((dp[N][0] + dp[N][1] + dp[N][2]) % 9901)
*/
