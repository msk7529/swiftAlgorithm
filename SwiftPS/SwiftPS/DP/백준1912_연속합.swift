//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/31.
//
/*
let n: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp: [Int] = Array(repeating: 0, count: n)   // dp[i] : i번째 정수까지의 최대 연속 부분 합
var result: Int = 0
dp[0] = arr[0]
result = dp[0]

for i in 1..<n {
    dp[i] = max(dp[i-1] + arr[i], arr[i])   // 현재의 숫자가 최대연속부분합보다 크면, dp[i]를 현재의 숫자로 대체한다.
    result = max(result, dp[i])
}

print(result)
*/
