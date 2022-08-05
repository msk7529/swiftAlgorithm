//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/27.
//
/*
var arr: [Int] = Array(repeating: 0, count: 91)
let input = readLine()!

for curr in input {
    let value = Int(curr.asciiValue!)
    if value >= 97 {
        arr[value - 32] += 1
    } else {
        arr[value] += 1
    }
}

let maxAsciiValueCount = arr.max()!

if arr.filter({ $0 == maxAsciiValueCount }).count >= 2 {
    print("?")
} else {
    for (index, value) in arr.enumerated() {
        if value == maxAsciiValueCount {
            print(Character(Unicode.Scalar.init(UInt8(index))))
            break
        }
    }
}
*/
