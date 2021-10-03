//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
var arr: [Int] = []
var dp: [[Int]] = []    // dp[i][j]: i~j까지 카드가 있을 때 근우가 얻을 수 있는 최대 점수
var resultString = ""

for _ in 0..<Int(readLine()!)! {
    let N = Int(readLine()!)!
    arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    dp = Array(repeating: Array(repeating: -1, count: N), count: N)
    
    resultString += "\(minMax(left: 0, right: N - 1, turn: 1))\n"
}
resultString.removeLast()
print(resultString)

func minMax(left: Int, right: Int, turn: Int) -> Int {
    // 근우 차례일 땐 근우의 점수를 최대로 하고, 명우 차례일 땐 근우의 점수를 최소로 하는 플레이를 해야한다.
    if left > right { return 0 }
    
    if dp[left][right] != -1 {
        return dp[left][right]
    }
    
    if turn % 2 == 1 {  // 근우 차례
        dp[left][right] = max(arr[left] + minMax(left: left + 1, right: right, turn: turn + 1), arr[right] + minMax(left: left, right: right - 1, turn: turn + 1))
    } else {    // 명우 차례
        dp[left][right] = min(minMax(left: left + 1, right: right, turn: turn + 1), minMax(left: left, right: right - 1, turn: turn + 1))
    }
    return dp[left][right]
}
*/
