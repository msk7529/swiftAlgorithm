//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/27.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]
var arr: [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var prefixSum: [Int] = Array(repeating: 0, count: N + 1)
var result: Int = -Int.max

for i in 1...N {
    prefixSum[i] = prefixSum[i - 1] + arr[i]
}

for i in stride(from: K, through: N, by: 1) {
    result = max(result, prefixSum[i] - prefixSum[i - K])
}
print(result)
*/
