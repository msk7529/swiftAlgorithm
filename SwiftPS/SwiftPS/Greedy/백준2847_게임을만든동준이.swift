//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/16.
//
/*
let N = Int(readLine()!)!
var arr: [Int] = []
var result = 0

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

if N == 1 {
    print("0")
} else {
    var currVal = arr.last!
    
    for i in stride(from: N - 2, through: 0, by: -1) {
        if arr[i] >= currVal {
            result += arr[i] - (currVal - 1)
        }
        currVal = min(arr[i], currVal - 1)
    }
    print(result)
}
*/
