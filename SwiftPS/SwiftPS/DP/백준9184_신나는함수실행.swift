//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/07.
//
/*
var result: String = ""
var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: 21), count: 21), count: 21)

while true {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    if line[0] == -1 && line[1] == -1 && line[2] == -1 {
        if !result.isEmpty {
            result.removeLast()
        }
        print(result)
        break
    }
    
    result += "w(\(line[0]), \(line[1]), \(line[2])) = \(w(line[0], line[1], line[2]))\n"
}

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if min(a, min(b, c)) <= 0 { return 1 }
    if max(a, max(b, c)) > 20 { return w(20, 20, 20) }
    
    if dp[a][b][c] != -1 {
        return dp[a][b][c]
    }
    
    if a < b && b < c {
        dp[a][b][c] = w(a, b, c - 1) + w(a, b - 1, c - 1) - w(a, b - 1, c)
    } else {
        dp[a][b][c] = w(a - 1, b, c) + w(a - 1, b - 1, c) + w(a - 1, b, c - 1) - w(a - 1, b - 1, c - 1)
    }
    return dp[a][b][c]
}
*/
