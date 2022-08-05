//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/24.
//
/*
let N: Int = Int(readLine()!)!
let MOD: Int = 1000000000
var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: 1 << 2), count: N), count: 10)
// 이진수로 상태저장
// 00: 0또는 9에 도달하지 않은 상태. 01: 0에 도달한 상태, 10: 9에 도달한 상태, 11: 0과 9에 도달한 상태

func excuteDP(currNum: Int, len: Int, numState: Int) -> Int {
    if len == N {
        if numState == (1 << 2) - 1 {
            return 1
        }
        return 0
    }
    
    if dp[currNum][len][numState] != -1 {
        return dp[currNum][len][numState]
    }
    
    dp[currNum][len][numState] = 0
    
    let prevNum = currNum - 1
    let nextNum = currNum + 1
    
    if prevNum >= 0 {
        if prevNum == 0 {
            dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: 0, len: len + 1, numState: numState | 1 << 0)) % MOD
        } else {
            dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: prevNum, len: len + 1, numState: numState)) % MOD
        }
    }
    
    if nextNum <= 9 {
        if nextNum == 9 {
            dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: 9, len: len + 1, numState: numState | 1 << 1)) % MOD
        } else {
            dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: nextNum, len: len + 1, numState: numState)) % MOD
        }
    }
    
    return dp[currNum][len][numState]
}

if N < 10 {
    print("0")
} else {
    var result = 0
    for startNum in 1...9 {
        // dp메서드 내부에서 나머지 연산처리 뿐만 아니라, 여기서도 수행을 해야함. 실수 주의
        if startNum == 9 {
            result = (result + excuteDP(currNum: startNum, len: 1, numState: 1 << 1)) % MOD
        } else {
            result = (result + excuteDP(currNum: startNum, len: 1, numState: 0)) % MOD
        }
    }
    print(result)
}
*/
