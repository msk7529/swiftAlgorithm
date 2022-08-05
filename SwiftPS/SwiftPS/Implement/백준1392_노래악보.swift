//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/01/12.
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], Q = line[1]
var curr = 0
var arr: [Int] = Array(repeating: 0, count: 10001)
var result: String = ""

for index in 1...N {
    let time = Int(readLine()!)!
    for num in stride(from: curr, to: curr + time, by: 1) {
        arr[num] = index
    }
    curr += time
}

for _ in 0..<Q {
    let q = Int(readLine()!)!
    result += "\(arr[q])\n"
}
result.removeLast()
print(result)
*/
