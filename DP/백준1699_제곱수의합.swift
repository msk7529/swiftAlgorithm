//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/21.
//
/*
import Foundation

let N: Int = Int(readLine()!)!
var powArray: [Int] = []
var dp: [Int] = Array(repeating: -1, count: N + 1)

for i in 1...Int(sqrt(Double(N))) {
    powArray.append(i * i)
}

func calculate(_ N: Int) -> Int {
    if N == 0 {
        return 0
    }
    
    if dp[N] != -1 {
        return dp[N]
    }
    
    dp[N] = Int.max
    
    for curr in powArray {
        if N >= curr {
            dp[N] = min(dp[N], calculate(N - curr) + 1)
        }
    }
    
    return dp[N]
}

print(calculate(N))
*/
