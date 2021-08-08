//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], M = line[1], K = line[2]
var arr: [Int] = Array(repeating: 0, count: N)
var result: String = ""

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

let lazySegmentTree: LazySegmentTree = .init(array: arr)

for _ in 0..<M+K {
    let query = readLine()!.split(separator: " ").map { Int(String($0))! }
    if query[0] == 1 {
        lazySegmentTree.update(leftBound: query[1] - 1, rightBound: query[2] - 1, incremental: query[3])
    } else {
        result += "\(lazySegmentTree.query(leftBound: query[1] - 1, rightBound: query[2] - 1))\n"
    }
}

result.removeLast()
print(result)
*/
