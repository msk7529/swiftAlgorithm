//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/12/19.
//
/*
let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: Int = 0

permutation(arr, N - 1)

func permutation(_ a: [Int], _ r: Int) {
    if r == 0 {
        var sum: Int = 0
        for i in 0..<N-1 {
            sum += abs(a[i] - a[i + 1])
        }
        result = max(result, sum)
    } else {
        var a: [Int] = a
        permutation(a, r - 1)
        
        for i in 0..<r {
            a.swapAt(i, r)
            permutation(a, r - 1)
            a.swapAt(i, r)
        }
    }
}

print(result)
*/
