//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/28.
//
/*
let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp: [Int] = Array(repeating: -1, count: N)
var result: Int = 0

for i in stride(from: N - 1, through: 0, by: -1) {
    // for문으로 모든 인덱스에 대해 수행하는 이유는, [3, 4, 5, 6, 2, 1]과 같이 for문을 아얘 못 도는 경우가 있음.
    result = max(result, excuteDP(curr: i))
}

print(result)

func excuteDP(curr: Int) -> Int {
    if dp[curr] != -1 {
        return dp[curr]
    }
    
    dp[curr] = 1    // 탐색하지 않은 곳은 1로 초기화. 모든 부분수열의 길이는 최소한 1 이상이기 때문.
    
    for i in stride(from: curr - 1, through: 0, by: -1) {
        if arr[i] < arr[curr] {
            dp[curr] = max(dp[curr], excuteDP(curr: i) + 1)
        }
    }
    
    return dp[curr]
}
*/
