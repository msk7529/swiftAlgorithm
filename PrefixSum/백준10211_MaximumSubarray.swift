//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/27.
//
/*
for _ in 0..<Int(readLine()!)! {
    let N = Int(readLine()!)!
    let arr: [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
    var prefixSum: [Int] = Array(repeating: 0, count: N + 1)
    var result: Int = -Int.max
    
    for i in 1...N {
        prefixSum[i] = prefixSum[i - 1] + arr[i]
    }
    
    for interval in 1...N {
        for i in stride(from: interval, through: N, by: 1) {
            result = max(result, prefixSum[i] - prefixSum[i - interval])
        }
    }
    print(result)
}
*/
