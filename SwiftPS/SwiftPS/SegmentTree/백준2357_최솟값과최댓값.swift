//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
import Foundation

let file: FileIO = .init()
let N = file.readInt(), M = file.readInt()
var arr: [Int] = Array(repeating: 0, count: N)
var result: String = ""

for i in 0..<N {
    arr[i] = file.readInt()
}

let minSegmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in a < b ? a : b })
let maxSegmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in a > b ? a : b })

for _ in 0..<M {
    let a = file.readInt(), b = file.readInt()
    result += "\(minSegmentTree.query(leftBound: a - 1, rightBound: b - 1)) \(maxSegmentTree.query(leftBound: a - 1, rightBound: b - 1))\n"
}

result.removeLast()

print(result)
*/
