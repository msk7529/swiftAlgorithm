//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let T: Int = Int(readLine()!)!
var n: Int = 0
var sticker: [[Int]] = []
var dp: [[Int]] = []
var result: Int = 0

for _ in 0..<T {
    result = 0
    sticker = []
    dp = []
    n = Int(readLine()!)!
    dp = Array(repeating: Array(repeating: -1, count: n), count: 2)
    sticker.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    sticker.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    
    result = excuteDP(currY: 0, currX: 0)
    result = max(result, excuteDP(currY: 1, currX: 0))
    print(result)
}

func excuteDP(currY: Int, currX: Int) -> Int {
    // 현재 탐색중인 스티커의 위치가 (currY, currX) 일 때 스티커 점수의 최댓값
    if currX == n {
        return 0
    }
    
    if dp[currY][currX] != -1 {
        return dp[currY][currX]
    }
    
    dp[currY][currX] = 0
    
    // 이번 스티커를 선택하지 않고 다음 열로 넘어간다.
    dp[currY][currX] = excuteDP(currY: 0, currX: currX + 1)
    dp[currY][currX] = max(dp[currY][currX], excuteDP(currY: 1, currX: currX + 1))
    
    if currY == 0 {
        // 이번 스티커를 선택하고 대각선 아래 스티커로 넘어간다.
        dp[currY][currX] = max(dp[currY][currX], sticker[currY][currX] + excuteDP(currY: 1, currX: currX + 1))
    } else {
        // 이번 스티커를 선택하고 대각선 위 스티커로 넘어간다.
        dp[currY][currX] = max(dp[currY][currX], sticker[currY][currX] + excuteDP(currY: 0, currX: currX + 1))
    }
    
    return dp[currY][currX]
}
*/
