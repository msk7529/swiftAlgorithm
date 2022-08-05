//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let A: [UInt8] = readLine()!.map { $0.asciiValue! - 65 }
let B: [UInt8] = readLine()!.map { $0.asciiValue! - 65 }
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: B.count), count: A.count)

print(excuteDP(index1: 0, index2: 0))

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
*/
