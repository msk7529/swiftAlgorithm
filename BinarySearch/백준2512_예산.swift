//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = Int(readLine()!)!

var minCost = 1     // 배정할 수 있는 최소예산
var maxCost = arr.max()!    // 배정할 수 있는 최대예산
var result: Int = 0

while maxCost >= minCost {
    let mid = (minCost + maxCost) / 2   // 상한선
    let total = arr.reduce(0, {
        if $1 <= mid {
            return $0 + $1
        } else {
            return $0 + mid
        }
    })
    
    if total <= M {
        // total이 총 예산보다 작거나 같으면, 상한선을 높여본다.
        result = max(result, mid)
        minCost = mid + 1
    } else {
        // total이 총 예산을 초과하면, 상한선을 낮춘다.
        maxCost = mid - 1
    }
}

print(result)
*/
