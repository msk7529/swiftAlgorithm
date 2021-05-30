//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let N: Int = Int(readLine()!)!
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 10), count: N)
var result: Int = 0

if N == 1 {
    print("9")
} else {
    for i in 1...9 {
        result = (result + excuteDP(index: 1, number: i)) % 1000000000
    }
    print(result)
}

func excuteDP(index: Int, number: Int) -> Int {
    // index번째 숫자가 number 일 때의 총 계단 수
    if index == N {
        return 1
    }
    
    if dp[index][number] != -1 {
        return dp[index][number]
    }
    
    dp[index][number] = 0

    if number > 0 {
        // number가 0이 아니면 다음번째 숫자는 1을 뺀값으로 정한다.
        dp[index][number] = excuteDP(index: index + 1, number: number - 1) % 1000000000
    }
    
    if number < 9 {
        // number가 9가 아니면 다음번째 숫자는 1을 더한값으로 정한다.
        dp[index][number] = (dp[index][number] + excuteDP(index: index + 1, number: number + 1)) % 1000000000
    }
    
    return dp[index][number]
}
*/
