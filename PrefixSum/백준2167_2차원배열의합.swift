//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/26.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var arr: [[Int]] = Array(repeating: [], count: N)
var prefixSum: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr[i] = line
}

for i in 0..<N {
    var sum: Int = 0
    for j in 0..<M {
        sum += arr[i][j]
        prefixSum[i][j] = sum
    }
}

for _ in 0..<Int(readLine()!)! {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0] - 1, b = line[1] - 1, c = line[2] - 1, d = line[3] - 1
    var sum: Int = 0
    
    for i in a...c {
        if b == 0 {
            sum += prefixSum[i][d]
        } else {
            sum += (prefixSum[i][d] - prefixSum[i][b - 1])
        }
    }
    print(sum)
}
*/
 
// 비슷한데 prefixSum을 DP로 구성해서 누적합 구하는 부분을 O(1)에 하는 방법

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var arr: [[Int]] = Array(repeating: [], count: N + 1)
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
// dp[i][j]: (1, 1)부터 (i, j)까지 누적합

for i in 1...N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr[i] = [0] + line
}

for i in 1...N {
    for j in 1...M {
        dp[i][j] += dp[i][j - 1] + dp[i - 1][j] + arr[i][j] - dp[i - 1][j - 1]  // 그림을 그려서 보면 이해가 쉽다.
    }
}

for _ in 0..<Int(readLine()!)! {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let i = line[0], j = line[1], x = line[2], y = line[3]
    print(dp[x][y] - dp[x][j - 1] - dp[i - 1][y] + dp[i - 1][j - 1])
}
