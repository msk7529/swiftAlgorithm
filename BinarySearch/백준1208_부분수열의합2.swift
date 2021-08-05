//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/06.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], S = input[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: Int = 0
var sumDic1: [Int: Int] = [:]
var sumDic2: [Int: Int] = [:]

if arr.count == 1 {
    print(arr[0] == S ? "1" : "0")
} else {
    // N이 최대 40이므로 한번에 부분집합들의 합을 구하면 2^40, 시간초과가 발생한다.
    // 따라서 집합을 절반으로 나누어 부분집합들의 합을 구한다. O(2 * 2^20)
    calcSumOfSubSets(beforeHalf: true, currIdx: 0, totalSum: 0)
    calcSumOfSubSets(beforeHalf: false, currIdx: N / 2 + 1, totalSum: 0)
    
    for (key, value) in sumDic1 {
        // sumDic2에 (S - key)를 킷값으로 갖는 개체가 존재하면 성공
        if let cnt = sumDic2[S - key] {
            result += value * cnt
        }
    }

    print(S == 0 ? result - 1: result)
}

func calcSumOfSubSets(beforeHalf: Bool, currIdx: Int, totalSum: Int) {
    if beforeHalf && currIdx == N / 2 + 1 {
        // 부분집합의 합을 딕셔너리의 키값으로 주고, value는 동일한 값이 있으면 1씩 증가시킨다.
        if let value = sumDic1[totalSum] {
            sumDic1[totalSum] = value + 1
        } else {
            sumDic1[totalSum] = 1
        }
        return
    } else if !beforeHalf && currIdx == N {
        if let value = sumDic2[totalSum] {
            sumDic2[totalSum] = value + 1
        } else {
            sumDic2[totalSum] = 1
        }
        return
    }
    
    calcSumOfSubSets(beforeHalf: beforeHalf, currIdx: currIdx + 1, totalSum: totalSum)
    calcSumOfSubSets(beforeHalf: beforeHalf, currIdx: currIdx + 1, totalSum: totalSum + arr[currIdx])
}
*/
