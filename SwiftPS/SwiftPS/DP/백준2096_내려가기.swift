//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/19.
//
/*
let N: Int = Int(readLine()!)!
var arr: [[Int]] = []
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 3), count: N)
var dp2: [[Int]] = Array(repeating: Array(repeating: -1, count: 3), count: N)
var maxResult: Int = 0
var minResult: Int = Int.max

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(line)
}

maxResult = excuteDP(0, 0)
maxResult = max(maxResult, excuteDP(0, 1))
maxResult = max(maxResult, excuteDP(0, 2))

minResult = excuteDP2(0, 0)
minResult = min(minResult, excuteDP2(0, 1))
minResult = min(minResult, excuteDP2(0, 2))

print("\(maxResult) \(minResult)")

func excuteDP(_ y: Int, _ x: Int) -> Int {
    if y == N {
        return 0
    }
    
    if dp[y][x] != -1 {
        return dp[y][x]
    }
    
    dp[y][x] = 0
    
    if x != 0 {
        dp[y][x] = arr[y][x] + excuteDP(y + 1, x - 1)
    }
    
    dp[y][x] = max(dp[y][x], arr[y][x] + excuteDP(y + 1, x))
    
    if x != 2 {
        dp[y][x] = max(dp[y][x], arr[y][x] + excuteDP(y + 1, x + 1))
    }
    
    return dp[y][x]
}

func excuteDP2(_ y: Int, _ x: Int) -> Int {
    if y == N {
        return 0
    }
    
    if dp2[y][x] != -1 {
        return dp2[y][x]
    }
    
    dp2[y][x] = Int.max
    
    if x != 0 {
        dp2[y][x] = arr[y][x] + excuteDP2(y + 1, x - 1)
    }
    
    dp2[y][x] = min(dp2[y][x], arr[y][x] + excuteDP2(y + 1, x))
    
    if x != 2 {
        dp2[y][x] = min(dp2[y][x], arr[y][x] + excuteDP2(y + 1, x + 1))
    }
    
    return dp2[y][x]
}
*/
