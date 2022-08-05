//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/18.
//
/*
let T: Int = Int(readLine()!)!
var K: Int = 0

for _ in 0..<T {
    var arr: [Int] = []
    var dp: [[Int]] = []    // dp[i][j] : i부터 j까지 합치는데 필요한 최소비용
    var sum: [Int] = []     // sum[i]: i번파일까지 파일크기의 총 합
    // 위 세개의 배열을 for문 밖에 전역변수로 빼면, 채점시에 1초가 더 걸림..;;;
    
    K = Int(readLine()!)!
    arr = [0]
    arr.append(contentsOf: readLine()!.split(separator: " ").map { Int(String($0))! })
    dp = Array(repeating: Array(repeating: 0, count: K + 1), count: K + 1)
    sum = Array(repeating: 0, count: K + 1)
    
    for i in 1...K {
        sum[i] = sum[i-1] + arr[i]
    }
    
    for gap in 1..<K {
        for start in 1...(K-gap) {
            let end: Int = start + gap
            dp[start][end] = Int.max
            
            for mid in start..<end {
                dp[start][end] = min(dp[start][end], dp[start][mid] + dp[mid+1][end] + sum[end] - sum[start-1])
            }
        }
    }
    print(dp[1][K])
}
*/
