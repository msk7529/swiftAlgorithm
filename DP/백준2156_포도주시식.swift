//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
import Foundation

let file: FileIO = .init()
let N: Int = file.readInt()
var arr: [Int] = Array(repeating: 0, count: N)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 3), count: N)

for i in 0..<N {
    arr[i] = file.readInt()
}

print(excuteDP(curr: 0, consecutiveNumber: 0))

func excuteDP(curr: Int, consecutiveNumber: Int) -> Int {
    // arr의 curr번째 수부터 연속해서 consecutiveNumber개의 수를 선택했을때의 모든 경우에 대한 최대합
    if curr == N {
        return 0
    }
    
    if dp[curr][consecutiveNumber] != -1 {
        return dp[curr][consecutiveNumber]
    }
    
    dp[curr][consecutiveNumber] = 0
    
    if consecutiveNumber == 2 {
        // 이미 2개를 연속해서 선택한 경우에는 이번 탐색한 수를 선택하지 않고 패스한다.
        dp[curr][consecutiveNumber] = excuteDP(curr: curr + 1, consecutiveNumber: 0)
    } else {
        dp[curr][consecutiveNumber] = excuteDP(curr: curr + 1, consecutiveNumber: 0)    // 패스
        dp[curr][consecutiveNumber] = max(dp[curr][consecutiveNumber], arr[curr] + excuteDP(curr: curr + 1, consecutiveNumber: consecutiveNumber + 1))  // 선택
    }
    
    return dp[curr][consecutiveNumber]
}
*/
