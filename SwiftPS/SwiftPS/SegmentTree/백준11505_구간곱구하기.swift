//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
import Foundation

let file: FileIO = .init()
let N = file.readInt(), M = file.readInt(), K = file.readInt()
var arr: [Int] = Array(repeating: 0, count: N)
var result: String = ""

for i in 0..<N {
    arr[i] = file.readInt()
}

let segmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in (a * b) % 1000000007 })

for _ in 0..<M+K {
    let a = file.readInt(), b = file.readInt(), c = file.readInt()
    if a == 1 {
        segmentTree.replaceItem(at: b - 1, withItem: c)
    } else {
        result += "\(segmentTree.query(leftBound: b - 1, rightBound: c - 1))\n"
    }
}

result.removeLast()
print(result)
*/
