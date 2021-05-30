//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let n: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: n + 1)
var dp2: [Int] = Array(repeating: -1, count: n + 1)

func excuteDP(remain: Int, devideRow: Int) -> Int {
    // 직사각형에서 현재 남은 길이의 수가 remain이고 행의 상태가 devideRow(1이면 나눠진 상태)일 때 총 타일링의 가짓 수
    if remain == 0 {
        return 1
    } else if remain < 0 {
        return 0
    }
    
    if dp[remain][devideRow] != -1 {
        return dp[remain][devideRow]
    }
    
    dp[remain][devideRow] = 0
    
    dp[remain][devideRow] = excuteDP(remain: remain - 1, devideRow: 0) % 10007  // 2*1 타일을 세움
    dp[remain][devideRow] = (dp[remain][devideRow] + excuteDP(remain: remain - 2, devideRow: 0)) % 10007    // 2*2 타일을 세움
    dp[remain][devideRow] = (dp[remain][devideRow] + excuteDP(remain: remain - 2, devideRow: 1)) % 10007    // 1*2 타일을 세움
    
    return dp[remain][devideRow]
}

print(excuteDP(remain: n, devideRow: 0))


func excuteDP2(remain: Int) -> Int {
    // 직사각형에서 현재 남은 길이의 수가 remain 일 때 총 타일링의 가짓 수
    if remain == 0 {
        return 1
    } else if remain < 0 {
        return 0
    }
    
    if dp2[remain] != -1 {
        return dp2[remain]
    }
    
    dp2[remain] = 0
    
    dp2[remain] = excuteDP2(remain: remain - 1) % 10007  // 2*1 타일을 세움
    dp2[remain] = (dp2[remain] + excuteDP2(remain: remain - 2) * 2) % 10007    // 2*2 타일을 세움, 1*2 타일을 세움
    
    return dp2[remain]
}

print(excuteDP2(remain: n))
*/
