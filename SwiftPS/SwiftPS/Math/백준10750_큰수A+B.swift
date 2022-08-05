//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/19.
//
/*
let line = readLine()!.split(separator: " ").map { String($0) }
var A = line[0]
var B = line[1]
var overflow: Int = 0
var result: String = ""

if B.count > A.count {
    swap(&A, &B)
}

for _ in 0..<B.count {
    let sum: Int = Int(String(A.removeLast()))! + Int(String(B.removeLast()))! + overflow
    if sum >= 10 {
        overflow = 1
    } else {
        overflow = 0
    }
    result.append(String(sum % 10))
}

for _ in stride(from: B.count, to: A.count, by: 1) {
    let curr: Int = Int(String(A.removeLast()))! + overflow
    if curr >= 10 {
        overflow = 1
    } else {
        overflow = 0
    }
    result.append(String((curr % 10)))
}

if overflow == 1 {
    result.append("1")
}

print(String(result.reversed()))
*/
