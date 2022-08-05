//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/01.
//
/*
let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: 2), count: 1001), count: arr.count)
var result: Int = 0

result = excuteDP(index: 0, lastNum: 0, compare: 0)
result = max(result, excuteDP(index: 0, lastNum: 0, compare: 1))
print(result)

func excuteDP(index: Int, lastNum: Int, compare: Int) -> Int {
    // index: 현재 탐색중인 인덱스, lastNum: 수열에서 마지막으로 선택한 숫자, compare: 1이면 증가하는중 0이면 감소하는중
    if index == arr.count - 1 {
        if compare == 0 && lastNum > arr[index] {
            return 1
        } else if compare == 1 && lastNum < arr[index] {
            return 1
        }
        return 0
    }
    
    if dp[index][lastNum][compare] != -1 {
        return dp[index][lastNum][compare]
    }
    
    dp[index][lastNum][compare] = 0
    
    if lastNum > arr[index] {
        // lastNum이 현재 수보다 큰 경우는, 현재의 compare과 관계없이 현재의 숫자를 선택할 수 있다.
        dp[index][lastNum][compare] = 1 + excuteDP(index: index + 1, lastNum: arr[index], compare: 0)   // 선택
    } else if lastNum < arr[index] {
        // lastNum이 현재 수보다 작은 경우는, 현재의 compare가 1일때만 선택할 수 있다.
        if compare == 1 {
            dp[index][lastNum][compare] = 1 + excuteDP(index: index + 1, lastNum: arr[index], compare: 1)   // 선택
        }
    }
    
    dp[index][lastNum][compare] = max(dp[index][lastNum][compare], excuteDP(index: index + 1, lastNum: lastNum, compare: compare))  // 현재의 숫자를 선택하지 않고 넘어감.

    return dp[index][lastNum][compare]
}
*/
