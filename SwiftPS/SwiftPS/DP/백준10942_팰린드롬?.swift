//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/20.
//
/*
let N: Int = Int(readLine()!)!
var arr: [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
let M: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: N + 1), count: N + 1)
var dp2: [[Int]] = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)

//for _ in 0..<M {
//    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
//    print(excuteDP(start: line[0], end: line[1]))
//}

excuteDP2()

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(dp2[line[0]][line[1]])
}

func excuteDP(start: Int, end: Int) -> Int {
    if start > end {
        return 1
    }
    
    if dp[start][end] != -1 {
        return dp[start][end]
    }
    
    if arr[start] != arr[end] {
        dp[start][end] = 0
    } else {
        dp[start][end] = excuteDP(start: start + 1, end: end - 1)
    }
    
    return dp[start][end]
}

func excuteDP2() {
    for i in 1...N {
        // 길이 1
        dp2[i][i] = 1
    }
    
    for i in 1..<N {
        // 길이 2
        if arr[i] == arr[i+1] {
            dp2[i][i+1] = 1
        }
    }
    
    for gap in 2..<N {
        // 길이 3 이상
        for i in 1...(N - gap) {
            if arr[i] == arr[i + gap] && dp2[i + 1][i + gap - 1] == 1 {
                dp2[i][i + gap] = 1
            }
        }
    }
}
*/
