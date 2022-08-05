//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n: Int = line[0]
let k: Int = line[1]
var coin: [Int] = Array(repeating: 0, count: n)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 100001), count: n)

for i in 0..<n {
    coin[i] = Int(readLine()!)!
}

print(excuteDP(index: 0, total: 0))

func excuteDP(index: Int, total: Int) -> Int {
    if total == k {
        return 1
    } else if total > k || index >= n {
        return 0
    }
    
    if dp[index][total] != -1 {
        return dp[index][total]
    }
    
    dp[index][total] = 0
    
    dp[index][total] += excuteDP(index: index, total: total + coin[index])  // 이번 동전을 선택함
    dp[index][total] += excuteDP(index: index + 1, total: total)    // 이번 동전을 선택하지 않음
    
    return dp[index][total]
}
*/
