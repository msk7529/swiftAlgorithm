//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let N: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: -1, count: N)

print(excuteDP(index: 0))

func excuteDP(index: Int) -> Int {
    if index == N {
        return 1
    } else if index > N {
        return 0
    }

    if dp[index] != -1 {
        return dp[index]
    }
    
    dp[index] = excuteDP(index: index + 1) % 15746
    dp[index] = (dp[index] + excuteDP(index: index + 2)) % 15746
    
    return dp[index]
}
*/
