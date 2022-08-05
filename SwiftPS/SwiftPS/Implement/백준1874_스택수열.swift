//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/19.
//
/*
let n = Int(readLine()!)!
var curr = 0
var arr: [Int] = []
var stack: [Int] = []
var result: [String] = []
var isSuccess: Bool = true

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

for num in arr {
    if num > curr {
        while num != curr {
            curr += 1
            stack.append(curr)
            result.append("+")
        }
        stack.removeLast()
        result.append("-")
    } else if num <= stack.last ?? 0 {
        while num != stack.last ?? 0 {
            stack.removeLast()
            result.append("-")
        }
        stack.removeLast()
        result.append("-")
    } else if stack.isEmpty {
        isSuccess = false
        break
    }
}

print(isSuccess ? result.joined(separator: "\n") : "NO" )
*/
