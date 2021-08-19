//
//  RotateArray.swift
//  Algorithm
//
//  Created by kakao on 2021/08/20.
//
func rotateArray(arr: [[Int]]) -> [[Int]] {
    // N * N 배열 회전 알고리즘.
    var result: [[Int]] = []
    let N = arr.count
    
    for i in 0..<N {
        for j in 0..<N {
            result[i][j] = arr[N - 1 - j][i]
        }
    }
    return result
}
