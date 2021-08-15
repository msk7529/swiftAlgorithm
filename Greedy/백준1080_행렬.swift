//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], M = line[1]
var A: [[Character]] = []
var B: [[Character]] = []
var result: Int = 0

for _ in 0..<N {
    let row = readLine()!
    A.append(row.map { $0 })
}

for _ in 0..<N {
    let row = readLine()!
    B.append(row.map { $0 })
}

if N < 3 || M < 3 {
    print(A == B ? "0" : "-1")
} else {
    for i in stride(from: 0, through: N - 3, by: 1) {
        for j in stride(from: 0, through: M - 3, by: 1) {
            if A[i][j] != B[i][j] {
                reverseA(i, j)
            }
        }
    }
    print(A == B ? result : "-1")
}

func reverseA(_ i: Int, _ j: Int) {
    result += 1
    for a in stride(from: i, to: i + 3, by: 1) {
        for b in stride(from: j, to: j + 3, by: 1) {
            A[a][b] = A[a][b] == "0" ? "1" : "0"
        }
    }
}
*/
