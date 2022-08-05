//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/17.
//
/*
let n: Int = Int(readLine()!)!
var arr: [[Int]] = []
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: n + 1), count: n + 1)
var result: Int = 0
let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(line)
}

for i in 0..<n {
    for j in 0..<n {
        result = max(result, excuteDP(i, j))
    }
}

print(result)

func excuteDP(_ y: Int, _ x: Int) -> Int {
    if dp[y][x] != -1 {
        return dp[y][x]
    }
    
    dp[y][x] = 1
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && arr[y][x] < arr[nextY][nextX] {
            dp[y][x] = max(dp[y][x], 1 + excuteDP(nextY, nextX))
        }
    }
    
    return dp[y][x]
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y >= n || y < 0 || x >= n || x < 0 {
        return false
    }
    return true
}
*/
