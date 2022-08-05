//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/21.
//

/* 재귀 dp
let X: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: Int.max, count: X + 1)

print(caluclate(X))     // 100ms

func caluclate(_ X: Int) -> Int {
    if X == 1 {
        return 0
    }

    if dp[X] != Int.max {
        return dp[X]
    }

    if X % 3 == 0 {
        dp[X] = caluclate(X / 3) + 1
    }
    if X % 2 == 0 {
        dp[X] = min(dp[X], caluclate(X / 2) + 1)
    }

    dp[X] = min(dp[X], caluclate(X - 1) + 1)

    return dp[X]
}
 */

/* 반복 dp
let X: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: 987654321, count: X + 1)
dp[1] = 0

for i in 1...X {
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i / 3] + 1)
    }
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i / 2] + 1)
    }
    dp[i] = min(dp[i], dp[i - 1] + 1)
}

print(dp[X])    // 48ms
*/
