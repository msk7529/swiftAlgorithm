//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/10.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let k: Int = line[1]
var coin: [Int] = []
var n: Int = 0
var dp: [Int] = []

for _ in 0..<line[0] {
    let curr = Int(readLine()!)!
    if !coin.contains(curr) {
        coin.append(curr)
    }
}
coin.sort { $0 > $1 }
n = coin.count
dp = Array(repeating: 987654321, count: k + 1)

let result: Int = excuteDP(remain: k)
print(result == 987654321 ? "-1" : result)

func excuteDP(remain: Int) -> Int {
    if remain == 0 {
        return 0
    }
    
    if dp[remain] != 987654321 {
        return dp[remain]
    }
        
    for curr in coin {
        if remain - curr < 0 {
            continue
        }
        dp[remain] = min(dp[remain], 1 + excuteDP(remain: remain - curr))
    }
    
    return dp[remain]
}
*/
