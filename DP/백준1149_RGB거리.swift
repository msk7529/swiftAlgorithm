//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/27.
//
/*
let N: Int = Int(readLine()!)!
var cost: [[Int]] = Array(repeating: [], count: N + 1)
var dp: [[Int]] = Array(repeating: Array(repeating: Int.max, count: 3), count: N + 1)
var result: Int = Int.max

for i in 1...N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    cost[i].append(contentsOf: line)
}

result = min(result, excuteDP(curr: 1, currColor: 0))
result = min(result, excuteDP(curr: 1, currColor: 1))
result = min(result, excuteDP(curr: 1, currColor: 2))
print(result)

func excuteDP(curr: Int, currColor: Int) -> Int {
    if curr == N + 1 {
        return 0
    }
    
    if dp[curr][currColor] != Int.max {
        return dp[curr][currColor]
    }
    
    dp[curr][currColor] = cost[curr][currColor] + excuteDP(curr: curr + 1, currColor: (currColor + 1) % 3)
    dp[curr][currColor] = min(dp[curr][currColor], cost[curr][currColor] + excuteDP(curr: curr + 1, currColor: (currColor + 2) % 3))

    return dp[curr][currColor]
}
*/
