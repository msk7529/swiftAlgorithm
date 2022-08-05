//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/21.
//
/*
let T: Int = Int(readLine()!)!
var dp: [Int: (Int, Int)] = [:]

for _ in 0..<T {
    let result = fibonacci(Int(readLine()!)!)
    print("\(result.0) \(result.1)")
}

func fibonacci(_ N: Int) -> (Int, Int) {
    if N == 0 {
        return (1, 0)
    } else if N == 1 {
        return (0, 1)
    } else if N < 0 {
        return (0, 0)
    }
    
    if let ret = dp[N] {
        return ret
    }
    
    dp[N] = (0, 0)
    
    let minusOne = fibonacci(N-1)
    let minusTwo = fibonacci(N-2)
    dp[N] = (minusOne.0 + minusTwo.0, minusOne.1 + minusTwo.1)
    
    return dp[N]!
}
*/
