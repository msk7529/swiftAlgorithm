//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/22.
/*

// https://www.hackerrank.com/x/library/hackerrank/all/questions/1004578/try
// K-th Occurrence Queries
// 배열을 순회하며 현재까지 X가 발견된 횟수와 저장되어있는 인덱스를 Dictionary에 저장하는것이 핵심
// 단순 배열에 pair로 저장하면 타임아웃

func solve(X: Int, arr: [Int], query_values: [Int]) -> [Int] {
    var countDic: [Int: Int] = [:]
    var count: Int = 1
    var result: [Int] = []
    for (index, num) in arr.enumerated() {
        if num == X {
            countDic[count] = index + 1
            count += 1
        }
    }
    
    for occurrence in query_values {
        if let index = countDic[occurrence] {
            result.append(index)
        } else {
            result.append(-1)
        }
    }
    return result
}

/* 시간초과
func solve(X: Int, arr: [Int], query_values: [Int]) -> [Int] {
    var pairArray: [(Int, Int)] = []
    var count: Int = 1
    var result: [Int] = []
    for (index, num) in arr.enumerated() {
        if num == X {
            pairArray.append((count, index + 1))
            count += 1
        }
    }
    
    for occurrence in query_values {
        if let index = pairArray.first(where: { $0.0 == occurrence })?.1 {
            result.append(index)
        } else {
            result.append(-1)
        }
    }
    return result
}
*/
print(solve(X: 8, arr: [ 1, 2, 20, 8, 8, 1, 2, 5, 8, 0 ], query_values: [ 100, 2, 1, 3, 4 ]))
*/
