//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/17.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n: Int = input[0]
let m: Int = input[1]
var arr: [[Int]] = []
var result: Int = 0

for _ in 0..<n {
    let line = readLine()!.map { Int(String($0))! }
    arr.append(line)
}

for i in 0..<n {
    for j in 0..<m {
        if i > 0 && j > 0 && arr[i][j] == 1 {
            // (i, j)를 기준으로 왼쪽, 좌대각선, 위쪽의 값을 보고 가장 작은 값을 더해준다.
            arr[i][j] += min(arr[i][j-1], min(arr[i-1][j-1], arr[i-1][j]))
        }
        result = max(result, arr[i][j])
    }
}

print(result * result)
*/
