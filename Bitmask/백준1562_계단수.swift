//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/24.
//
/*
let N: Int = Int(readLine()!)!
let MOD: Int = 1000000000
var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: 1 << 10), count: N), count: 10)

func excuteDP(currNum: Int, len: Int, numState: Int) -> Int {
    if len == N {
        if numState == (1 << 10) - 1 {
            return 1
        }
        return 0
    }
    
    if dp[currNum][len][numState] != -1 {
        return dp[currNum][len][numState]
    }
    
    dp[currNum][len][numState] = 0
    
    if currNum == 0 {
        dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: 1, len: len + 1, numState: numState | 1 << 1)) % MOD
    } else if currNum == 9 {
        dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: 8, len: len + 1, numState: numState | 1 << 8)) % MOD
    } else {
        dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: currNum - 1, len: len + 1, numState: numState | 1 << (currNum - 1))) % MOD
        dp[currNum][len][numState] = (dp[currNum][len][numState] + excuteDP(currNum: currNum + 1, len: len + 1, numState: numState | 1 << (currNum + 1))) % MOD
    }
    
    return dp[currNum][len][numState]
}

if N < 10 {
    print("0")
} else {
    var result = 0
    for startNum in 1...9 {
        // dp메서드 내부에서 나머지 연산처리 뿐만 아니라, 여기서도 수행을 해야함. 실수 주의
        result = (result + excuteDP(currNum: startNum, len: 1, numState: 1 << startNum)) % MOD
    }
    print(result)
}
*/
