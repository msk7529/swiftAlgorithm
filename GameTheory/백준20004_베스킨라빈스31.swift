//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/06.
//
/*
let A = Int(readLine()!)!
var counts: [Int] = []
var dp: [Int] = []
var result: String = ""

for n in 1...A {
    dp = Array(repeating: -1, count: 32)
    counts = Array(1...n)
    
    if excuteDP(curr: 31) == 1 {
        result += "\(n)\n"
    }
}
result.removeLast()
print(result)

func excuteDP(curr: Int) -> Int {
    if curr == 0 { return 0 }
    
    if dp[curr] != -1 {
        return dp[curr]
    }
    
    var win: Int = 0
    for count in counts {
        if curr >= count {
            win = max(win, excuteDP(curr: curr - count))
        }
    }
    
    if win == 0 {
        // 이번 턴에서 부를 수 있는 수를 모두 불러도 이길 수 있는 방법이 없는 경우, 상대방이 이긴다.
        dp[curr] = 1
    } else {
        dp[curr] = 0
    }
    return dp[curr]
}
*/
