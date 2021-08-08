//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], M = line[1]
var arr: [Int] = Array(repeating: 0, count: N)
var result: String = ""

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

let minSegmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in a < b ? a : b })
let maxSegmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in a > b ? a : b })

for _ in 0..<M {
    let query = readLine()!.split(separator: " ").map { Int(String($0))! }
    result += "\(minSegmentTree.query(leftBound: query[0] - 1, rightBound: query[1] - 1)) \(maxSegmentTree.query(leftBound: query[0] - 1, rightBound: query[1] - 1))\n"
}

result.removeLast()

print(result)
*/
