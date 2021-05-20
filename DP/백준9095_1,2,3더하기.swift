//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/21.
//
/*
let T: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 11)

for _ in 0..<T {
    print(calculate(Int(readLine()!)!))
}

func calculate(_ N: Int) -> Int {
    if N == 0 {
        return 1
    }
    
    if N < 0 {
        return 0
    }
    
    if dp[N] != 0 {
        return dp[N]
    }
    
    dp[N] = calculate(N-1) + calculate(N-2) + calculate(N-3)
    return dp[N]
}
*/
