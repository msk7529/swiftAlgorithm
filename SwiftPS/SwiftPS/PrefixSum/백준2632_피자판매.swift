//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/03.
//
/*
import Foundation

let file = FileIO.init()
let pizza = file.readInt()
let N = file.readInt(), M = file.readInt()
var A: [Int] = Array(repeating: 0, count: N + 1)
var B: [Int] = Array(repeating: 0, count: M + 1)
var pSumA: [Int] = Array(repeating: 0, count: N + 1)    // pSumA[i]: 1~i까지 피자조각의 합
var pSumB: [Int] = Array(repeating: 0, count: M + 1)
var sumDicA: [Int: Int] = [:]   // A 피자에서 가능한 모든 합 경우의 수를 저장
var sumDicB: [Int: Int] = [:]
var result: Int = 0

for i in 1...N {
    A[i] = file.readInt()
    pSumA[i] = pSumA[i - 1] + A[i]
}
for i in 1...M {
    B[i] = file.readInt()
    pSumB[i] = pSumB[i - 1] + B[i]
}

for i in 1...N {
    for j in 1...N {
        let curr: Int
        if i <= j {
            curr = pSumA[j] - pSumA[i - 1]
            sumDicA[curr, default: 0] += 1
        } else {
            curr = pSumA[N] - pSumA[i - 1] + pSumA[j]
            sumDicA[curr, default: 0] += 1
        }
    }
}
sumDicA[pSumA[N]] = 1   // 전체를 합하는 경우는 한가지

for i in 1...M {
    for j in 1...M {
        let curr: Int
        if i <= j {
            curr = pSumB[j] - pSumB[i - 1]
            sumDicB[curr, default: 0] += 1
        } else {
            curr = pSumB[M] - pSumB[i - 1] + pSumB[j]
            sumDicB[curr, default: 0] += 1
        }
    }
}
sumDicB[pSumB[M]] = 1

// A와 B를 조합해서 피자를 판매하는 경우 & A만 조합해서 피자를 판매하는 경우
for (key, value) in sumDicA {
    if key == pizza {
        result += value
    } else if key < pizza {
        if let bCnt = sumDicB[pizza - key] {
            result += value * bCnt
        }
    }
}

// B만 조합해서 피자를 판매하는 경우
if let onlyBcnt = sumDicB[pizza] {
    result += onlyBcnt
}

print(result)
*/
