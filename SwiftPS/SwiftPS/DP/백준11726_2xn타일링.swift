//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/27.
//
/*
let n: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: -1, count: n + 1)

print(excuteDP(curr: n))

func excuteDP(curr: Int) -> Int {
    if curr == 0 {
        return 1
    } else if curr < 0 {
        return 0
    }
    
    if dp[curr] != -1 {
        return dp[curr]
    }
    
    dp[curr] = 0
    dp[curr] = (dp[curr] + excuteDP(curr: curr - 1)) % 10007
    dp[curr] = (dp[curr] + excuteDP(curr: curr - 2)) % 10007
//    dp[curr] += excuteDP(curr: curr - 1) % 10007
//    dp[curr] += excuteDP(curr: curr - 2) % 10007  --> 오답.
    
    return dp[curr]
}
*/
