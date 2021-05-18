//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/17.
//
let line = readLine()!.split(separator: " ")
var A = ""
var B = ""
var overflow: Int = 0
var result: String = ""

if line[0].count >= line[1].count {
    A = String(line[0].reversed())
    B = String(line[1].reversed())
} else {
    A = String(line[1].reversed())
    B = String(line[0].reversed())
}

for i in 0..<B.count {
    let sum: Int = Int(String(A[A.index(A.startIndex, offsetBy: i)]))! + Int(String(B[B.index(B.startIndex, offsetBy: i)]))! + overflow
    if sum >= 10 {
        overflow = 1
    } else {
        overflow = 0
    }
    result.append(String(sum % 10))
}

for i in stride(from: B.count, to: A.count, by: 1) {
    let curr: Int = Int(String(A[A.index(A.startIndex, offsetBy: i)]))! + overflow
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
