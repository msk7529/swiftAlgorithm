//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/30

/*
 수학적으로 접근해야 한다는 것은 기억했는데, 식을 세우지 못했음
 */

/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], M = line[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var totalSum: Int = 0
var countOfPSumMod: [Int] = Array(repeating: 0, count: M)
var result: Int = 0

for i in 0..<N {
    totalSum = (totalSum + arr[i]) % M
    
    if totalSum.isMultiple(of: M) {
        result += 1
    }
    countOfPSumMod[totalSum] += 1
}

for num in countOfPSumMod {
    if num > 0 {
        result += (num * (num - 1) / 2)
    }
}
print(result)
*/
