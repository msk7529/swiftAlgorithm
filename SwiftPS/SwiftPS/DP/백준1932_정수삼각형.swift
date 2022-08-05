//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/28.
//
/*
let n: Int = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: [], count: n)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: n), count: n)
// dp[i][j] : arr[i][j]까지 도달했을때 경로들의 정수 합의 최대값

for i in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr[i].append(contentsOf: line)
}

print(excuteDP(row: 0, col: 0))

func excuteDP(row: Int, col: Int) -> Int {
    if row == n {
        return 0
    }
    
    if dp[row][col] != -1 {
        return dp[row][col]
    }
    
    dp[row][col] = arr[row][col] + excuteDP(row: row + 1, col: col)
    dp[row][col] = max(dp[row][col], arr[row][col] + excuteDP(row: row + 1, col: col + 1))
    
    return dp[row][col]
}
*/
