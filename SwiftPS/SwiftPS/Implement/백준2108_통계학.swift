//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
var dic: [Int: Int] = [:]

for _ in 0..<N {
    let num = Int(readLine()!)!
    arr.append(num)
    dic[num, default: 0] += 1
}

arr.sort()

print(Int(round(Double(arr.reduce(0,+)) / Double(N))))
print(arr[N / 2])

let valueMax = dic.values.max()!
var tmp: [Int] = []
for curr in dic {
    if curr.value == valueMax {
        tmp.append(curr.key)
    }
}
tmp.sort()

print(tmp.count > 1 ? tmp[1] : tmp[0])
print(arr.max()! - arr.min()!)
*/
