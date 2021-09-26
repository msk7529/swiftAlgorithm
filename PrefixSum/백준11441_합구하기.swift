//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/27.
//
/*
let N = Int(readLine()!)!
var arr: [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
var M = Int(readLine()!)!
var prefixSum: [Int] = Array(repeating: 0, count: N + 1)
var result: String = ""

for i in 1...N {
    prefixSum[i] = prefixSum[i - 1] + arr[i]
}

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0], b = line[1]
    result += "\(prefixSum[b] - prefixSum[a - 1])\n"
}
result.removeLast()
print(result)
*/
