//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/19.
//
/*
let N: Int = Int(readLine()!)!
if N % 2 == 0 {
    print("CY")
} else {
    print("SK")
}

// dp를 이용한 풀이
func excuteDP() {
    var dp: [Int] = Array(repeating: 0, count: N + 1)   // dp[i]: 1이면 상근이의 승리.
    dp[1] = 1
    dp[2] = 0
    dp[3] = 1
    
    for i in stride(from: 4, through: N, by: 1) {
        if min(dp[i-1], dp[i-3]) == 1 {
            dp[i] = 0
        } else {
            dp[i] = 1
        }
    }
    
    if dp[N] == 1 {
        print("SK")
    } else {
        print("CY")
    }
}
*/
