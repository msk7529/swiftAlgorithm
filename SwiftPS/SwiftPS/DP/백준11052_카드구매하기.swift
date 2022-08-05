//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let N: Int = Int(readLine()!)!
var card: [Int] = [0]
var dp: [Int] = Array(repeating: -1, count: N + 1)
card.append(contentsOf: readLine()!.split(separator: " ").map { Int(String($0))! })

print(excuteDP(cardCount: 0))

func excuteDP(cardCount: Int) -> Int {
    if cardCount == N {
        return 0
    }
    
    if dp[cardCount] != -1 {
        return dp[cardCount]
    }
    
    dp[cardCount] = 0

    for i in stride(from: 1, through: N, by: 1) {
        if cardCount + i <= N {
            dp[cardCount] = max(dp[cardCount], card[i] + excuteDP(cardCount: cardCount + i))
        }
    }
    
    return dp[cardCount]
}
*/
