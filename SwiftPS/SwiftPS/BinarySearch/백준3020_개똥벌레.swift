//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/01.
//
/*
import Foundation

let file: FileIO = .init()
let N = file.readInt()
let H = file.readInt()
var arr1: [Int] = []
var arr2: [Int] = []
var minResult: Int = .max
var minCount: Int = 0

for i in 0..<N {
    if i % 2 == 0 {
        arr1.append(file.readInt())
    } else {
        arr2.append(file.readInt())
    }
}

arr1.sort()
arr2.sort()

for trapHeight in 1...H {
    let lowerBound = arr1.lowerBound(value: trapHeight)
    let count1 = lowerBound == -1 ? 0 : arr1.count - lowerBound
    let upperBound = arr2.upperBound(value: H - trapHeight)
    let count2 = upperBound == -1 ? 0 : arr2.count - upperBound
    let sum = count1 + count2
    
    if sum < minResult {
        minResult = sum
        minCount = 1
    } else if sum == minResult {
        minCount += 1
    }
}

print("\(minResult) \(minCount)")
*/
