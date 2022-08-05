//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/25.
//
/*
let arr: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var word = readLine()!
var result: Int = 0

while true {
    if word.isEmpty { break }
    
    var count: Int = 1
    
    for curr in arr {
        if word.starts(with: curr) {
            result += 1
            count = curr.count
        }
    }
    
    if count == 1 {
        result += 1
    }
    
    for _ in 0..<count {
        _ = word.removeFirst()
    }
    
}

print(result)
*/
