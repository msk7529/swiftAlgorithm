//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0]
var K = line[1]
var arr: [Int] = []
var count: Int = 0

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}
arr.reverse()

for curr in arr {
    if K == 0 { break }
    
    if curr > K { continue }
    
    let currCnt = K / curr
    count += currCnt
    K -= currCnt * curr
}

print(count)
*/
