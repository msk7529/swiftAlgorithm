//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let N: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 10), count: N)

print(excuteDP(index: 0, num: 0))

func excuteDP(index: Int, num: Int) -> Int {
    // index번째 숫자가 num일 때 오르막 수의 총 개수
    if index == N {
        return 1
    }
    
    if dp[index][num] != -1 {
        return dp[index][num]
    }
    
    dp[index][num] = 0
    
    for i in stride(from: num, through: 9, by: 1) {
        dp[index][num] = (dp[index][num] + excuteDP(index: index + 1, num: i)) % 10007
    }
    
    return dp[index][num]
}
*/
