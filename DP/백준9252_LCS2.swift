//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/20.
//
/*
let A: [Character] = Array(readLine()!)
let B: [Character] = Array(readLine()!)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: B.count + 1), count: A.count + 1)
var result: String = ""

func excuteDP(index1: Int, index2: Int) -> Int {
    if index1 == A.count || index2 == B.count {
        // A와 B중에 하나라도 수열이 끝까지 갔으면 종료
        return 0
    }
    
    if dp[index1][index2] != -1 {
        return dp[index1][index2]
    }
    
    if A[index1] == B[index2] {
        // 현재 탐색중인 두 문자가 같으면 탐색위치를 각각 1씩 증가시킨다.
        dp[index1][index2] = 1 + excuteDP(index1: index1 + 1, index2: index2 + 1)
    } else {
        // 그렇지 않으면, A에서 위치를 하나 증가시키거나 B에서 위치를 하나 증가시켜서 둘 중에 max값을 취한다.
        dp[index1][index2] = max(excuteDP(index1: index1 + 1, index2: index2), excuteDP(index1: index1, index2: index2 + 1))
    }
    
    return dp[index1][index2]
}

func backTracking(index1: Int, index2: Int) {
    if index1 == A.count || index2 == B.count {
        // A와 B중에 하나라도 수열이 끝까지 갔으면 종료
        return
    }
    
    if A[index1] == B[index2] {
        // 현재 탐색중인 두 문자가 같은 경우
        result += String(A[index1])
        backTracking(index1: index1 + 1, index2: index2 + 1)
    } else if dp[index1 + 1][index2] >= dp[index1][index2 + 1] {
        backTracking(index1: index1 + 1, index2: index2)
    } else {
        backTracking(index1: index1, index2: index2 + 1)
    }
}

let maxLen: Int = excuteDP(index1: 0, index2: 0)
print(maxLen)

if maxLen > 0 {
    backTracking(index1: 0, index2: 0)
    print(result)
}


/* 반복DP
 
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
*/
