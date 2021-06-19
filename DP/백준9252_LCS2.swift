//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/20.
//
/*
let A: [Character] = Array(readLine()!)
let B: [Character] = Array(readLine()!)
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: B.count + 1), count: A.count + 1)

for i in 1...A.count {
    for j in 1...B.count {
        if A[i-1] == B[j-1] {
            // 현재 탐색중인 문자가 서로 같다면, dp배열 우하단대각선에 +1
            dp[i][j] = dp[i-1][j-1] + 1
        } else {
            // 다르면 탐색위치를 A와 B에서 한 칸을 증가시켜서 더 큰 값을 취한다.
            dp[i][j] = max(dp[i][j-1], dp[i-1][j])
        }
    }
}

func backTracking(_ i: Int, _ j: Int) -> String {
    if dp[i][j] == 0 {
        return ""
    } else if A[i-1] == B[j-1] {
        // 현재 탐색중인 문자가 서로 같다면, 왼쪽 대각 위의 LCS에 현재의 문자를 붙인다.
        return backTracking(i-1, j-1) + String(A[i-1])
    } else if dp[i-1][j] > dp[i][j-1] {
        // 위쪽 LCS를 가져온다.
        return backTracking(i-1, j)
    } else {
        // 왼쪽 LCS를 가져온다.
        return backTracking(i, j-1)
    }
}

let maxLen: Int = dp[A.count][B.count]
print(maxLen)

if maxLen > 0 {
    print(backTracking(A.count, B.count))
}
*/
