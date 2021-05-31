//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/01.
//
/*
let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 1001), count: N)

print(excuteDP(index: 0, lastNum: 0))

func excuteDP(index: Int, lastNum: Int) -> Int {
    if index == N {
        return 0
    }
    
    if dp[index][lastNum] != -1 {
        return dp[index][lastNum]
    }
    
    dp[index][lastNum] = 0
    
    if arr[index] > lastNum {
        dp[index][lastNum] = arr[index] + excuteDP(index: index + 1, lastNum: arr[index])   // 선택
    }
    dp[index][lastNum] = max(dp[index][lastNum], excuteDP(index: index + 1, lastNum: lastNum))  // 선택 안함
    
    return dp[index][lastNum]
}
*/
