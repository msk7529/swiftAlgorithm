//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/11.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], Q = line[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let segmentTree: SegmentTree<Int> = .init(array: arr, function: +)
var result: String = ""

for _ in 0..<Q {
    let query = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = min(query[0], query[1]), y = max(query[0], query[1]), a = query[2], b = query[3]
    result += "\(segmentTree.query(leftBound: x - 1, rightBound: y - 1))\n"
    segmentTree.replaceItem(at: a - 1, withItem: b)
}

result.removeLast()
print(result)
*/
