//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/21.
//
/*
let n: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp: [Int] = Array(repeating: -1, count: n)
var result: Int = 0

for i in 0..<n {
    result = max(result, excuteDP(curr: i))
}

print(result)

func excuteDP(curr: Int) -> Int {
    if dp[curr] != -1 {
        return dp[curr]
    }
    
    dp[curr] = 1
    
    for next in curr+1..<n {
        if arr[curr] < arr[next] {
            dp[curr] = max(dp[curr], 1 + excuteDP(curr: next))
        }
    }
    
    return dp[curr]
}
*/
