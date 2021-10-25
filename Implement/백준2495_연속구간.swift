//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/25.
//
/*
for _ in 0..<3 {
    let num = readLine()!.map { String($0) }
    var maxLen = 0
    for i in stride(from: 0, to: 8, by: 1) {
        var currLen = 1
        for j in stride(from: i + 1, to: 8, by: 1) {
            if num[i] == num[j] { currLen += 1 }
            else { break }
        }
        maxLen = max(maxLen, currLen)
    }
    print(maxLen)
}
*/
