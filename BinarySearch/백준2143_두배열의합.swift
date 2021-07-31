//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/01.
//
/*
let T = Int(readLine()!)!
let n = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let B = readLine()!.split(separator: " ").map { Int(String($0))! }
var subA: [Int] = []
var subB: [Int] = []
var result: Int = 0

for i in 0..<n {
    var sum = A[i]
    subA.append(sum)
    
    for j in stride(from: i + 1, to: n, by: 1) {
        sum += A[j]
        subA.append(sum)
    }
}

for i in 0..<m {
    var sum = B[i]
    subB.append(sum)
    
    for j in stride(from: i + 1, to: m, by: 1) {
        sum += B[j]
        subB.append(sum)
    }
}

subB.sort()

for num in subA {
    let upperBound = subB.upperBound(value: T - num)
    let lowerBound = subB.lowerBound(value: T - num)
    result += upperBound - lowerBound
}

print(result)
*/
