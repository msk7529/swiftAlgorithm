//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/03.
//
/*
import Foundation

let file = FileIO.init()
var result: String = ""
var pSum: [Int] = Array(repeating: 0, count: 1001)
pSum[1] = 3
pSum[2] = 5
pSum[3] = 9

for i in 4...1000 {
    var cnt: Int = 0
    for j in 1..<i {
        if gcd(i, j) == 1 {
            cnt += 1
        }
    }
    pSum[i] = pSum[i - 1] + cnt * 2
}

for _ in 0..<file.readInt() {
    let curr = file.readInt()
    result += "\(pSum[curr])\n"
}
result.removeLast()
print(result)
*/
