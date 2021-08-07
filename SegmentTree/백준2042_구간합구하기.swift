//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1], K = input[2]
var arr: [Int] = []
var result: String = ""

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

let tree: SegmentTree<Int> = .init(array: arr, function: +)

for _ in 0..<M+K {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0], b = line[1], c = line[2]
    
    if a == 1 {
        tree.replaceItem(at: b - 1, withItem: c)
    } else {
        let intervalSum = tree.query(leftBound: b - 1, rightBound: c - 1)
        result += "\(intervalSum)\n"
    }
}

result.removeLast()
print(result)
*/
