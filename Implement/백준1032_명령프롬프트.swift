//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/31.
//
/*
let N = Int(readLine()!)!
var file: [[Character]] = Array(repeating: [], count: N)
var result: String = ""

for i in 0..<N {
    file[i] = readLine()!.map { $0 }
}

for i in 0..<file[0].count {
    let letter = file[0][i]
    result += String(letter)
    
    for j in 0..<N {
        if letter != file[j][i] {
            _ = result.removeLast()
            result += "?"
            break
        }
    }
}

print(result)
*/
