//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/21.
//
/*
import Foundation

let file: FileIO = .init()
let N: Int = file.readInt()
let M: Int = file.readInt()
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var sum: [[Int]] = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1) // sum[i][j] : (1, 1)부터 (i,j)까지의 구간합
var currSum: Int = 0

for i in 0..<N {
    for j in 0..<N {
        arr[i][j] = file.readInt()
    }
}

for y in 1...N {
    for x in 1...N {
        sum[y][x] = sum[y-1][x] + sum[y][x-1] - sum[y-1][x-1] + arr[y-1][x-1]
    }
}

for _ in 0..<M {
    let (y1, x1, y2, x2) = (file.readInt(), file.readInt(), file.readInt(), file.readInt())
    let total: Int = sum[y2][x2] - sum[y2][x1-1] - sum[y1-1][x2] + sum[y1-1][x1-1]
    print(total)
}
*/
