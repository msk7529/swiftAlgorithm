//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let N: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: N)

print(excuteDP(curr: 1, number: 1))

func excuteDP(curr: Int, number: Int) -> Int {
    // curr번째 숫자가 number일 때 모든 N자리 이친수의 개수
    if curr == N {
        return 1
    }
    
    if dp[curr][number] != -1 {
        return dp[curr][number]
    }
    
    dp[curr][number] = 0
    
    if number == 0 {
        // 현재 숫자가 0이면 다음숫자는 0 또는 1로.
        dp[curr][number] = excuteDP(curr: curr + 1, number: 0)
        dp[curr][number] += excuteDP(curr: curr + 1, number: 1)
    } else {
        // 현재 숫자가 1이면 다음숫자는 0으로.
        dp[curr][number] = excuteDP(curr: curr + 1, number: 0)
    }
    
    return dp[curr][number]
}
*/
