//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/01.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = line[0]
let K: Int = line[1]
var bag: [(weight: Int, value: Int)] = []
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 100001), count: N)

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    bag.append((weight: line[0], value: line[1]))
}

print(excuteDP(index: 0, totalWeight: 0))

func excuteDP(index: Int, totalWeight: Int) -> Int {
    if index == N {
        return 0
    }
    
    if dp[index][totalWeight] != -1 {
        return dp[index][totalWeight]
    }
    
    dp[index][totalWeight] = 0
    
    if totalWeight + bag[index].weight <= K {
        dp[index][totalWeight] = bag[index].value + excuteDP(index: index + 1, totalWeight: totalWeight + bag[index].weight)    // 선택
    }
    dp[index][totalWeight] = max(dp[index][totalWeight], excuteDP(index: index + 1, totalWeight: totalWeight))  // 선택안함

    return dp[index][totalWeight]
}
*/
