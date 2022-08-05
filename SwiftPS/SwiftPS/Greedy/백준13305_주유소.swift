//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let N = Int(readLine()!)!
let dist = readLine()!.split(separator: " ").map { Int(String($0))! }
let cost = readLine()!.split(separator: " ").map { Int(String($0))! }

print(zip(dist, cost).reduce((0, Int.max)) { result, curr in
    return curr.1 < result.1 ? (result.0 + curr.0 * curr.1, curr.1) : (result.0 + curr.0 * result.1, result.1)
}.0)
*/
