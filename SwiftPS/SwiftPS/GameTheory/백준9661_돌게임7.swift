//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
let N = Int(readLine()!)!
print(N % 5 == 0 || N % 5 == 2 ? "CY" : "SK")

// N이 너무 커서 dp로는 풀 수 없고 규칙을 찾아야 한다. 그런데 규칙을 처음부터 찾기가 힘든 경우.. dp로 우선 구현해본다음에 dp배열을 출력해보고, 그 값들로 규칙을 추론하면 된다.
var dp: [Int] = Array(repeating: -1, count: N + 1)
dp[0] = 0
dp[1] = 0
dp[2] = 1
dp[3] = 0
dp[4] = 0

func excuteDP(num: Int) -> Int {
    if num <= 0 { return 0 }
    
    if dp[num] != -1 {
        return dp[num]
    }
    
    let win = excuteDP(num: num - 1) + excuteDP(num: num - 4) + excuteDP(num: num - 64)
    if win > 0 {
        dp[num] = 0
    } else {
        dp[num] = 1
    }
    return dp[num]
}

excuteDP(num: 100)

print(dp)
*/
