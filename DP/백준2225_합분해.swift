//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/14.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = line[0]
let K: Int = line[1]
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: K + 1), count: N + 1)

print(excuteDP(totalSum: 0, count: 0))

func excuteDP(totalSum: Int, count: Int) -> Int {
    if count == K {
        if totalSum == N {
            return 1
        }
        return 0
    }
    
    if totalSum > N {
        return 0
    }
    
    if dp[totalSum][count] != -1 {
        return dp[totalSum][count]
    }
    
    dp[totalSum][count] = 0
    
    for i in 0...N {
        dp[totalSum][count] = (dp[totalSum][count] + excuteDP(totalSum: i + totalSum, count: count + 1)) % 1000000000
    }
    
    return dp[totalSum][count]
}
*/
