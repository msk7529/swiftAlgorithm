//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/16.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], L = line[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var completed: [Bool] = Array(repeating: false, count: 1001)
var result: Int = 0

for curr in arr {
    if !completed[curr] {
        result += 1
        for i in stride(from: curr, to: min(curr + L, 1001), by: 1) {
            completed[i] = true
        }
    }
}

print(result)
*/
