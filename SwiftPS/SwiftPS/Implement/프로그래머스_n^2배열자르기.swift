//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/11/03.
//
/*
var N: Int = 0

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    N = n
    var result: [Int] = []
    
    for index in left...right {
        result.append(getNumber(Int(index)))
    }
    return result
}

func getNumber(_ index: Int) -> Int {
    let q = index / N, r = index % N
    return max(N - (N - 1 - r), 1 + q)
}

print(solution(4, 7, 14))
*/
