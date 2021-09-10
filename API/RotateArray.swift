//
//  RotateArray.swift
//  Algorithm
//
//  Created by kakao on 2021/08/20.
//
func rotateArray(arr: [[Int]]) -> [[Int]] {
    // N * N 배열 회전(반시계) 알고리즘
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)
    let N = arr.count
    
    for i in 0..<N {
        for j in 0..<N {
            result[i][j] = arr[N - 1 - j][i]
        }
    }
    return result
}
