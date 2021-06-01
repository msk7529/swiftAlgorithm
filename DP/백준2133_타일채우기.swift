//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/02.
//
/*
let N: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: -1, count: N + 1)

if N % 2 == 1 {
    print("0")
} else {
    print(excuteDP(remain: N))
}


func excuteDP(remain: Int) -> Int {
    if remain == 0 {
        return 1
    }
    
    if remain == 2 {
        dp[remain] = 3
    }
    
    if dp[remain] != -1 {
        return dp[remain]
    }
    
    dp[remain] = 0
    
    for i in stride(from: 2, through: remain, by: 2) {
        let standard: Int = i == 2 ? 3 : 2
        dp[remain] = dp[remain] + standard * excuteDP(remain: remain - i)
    }
    
    return dp[remain]
}
*/
