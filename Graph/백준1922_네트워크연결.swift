//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/19.
//
/*
struct EdgeInfo {
    let u: Int
    let v: Int
    let cost: Int
}

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var unionFind: UnionFind = .init(numOfVertex: N + 1)
var edgeInfos: [EdgeInfo] = []
var result: Int = 0

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    edgeInfos.append(EdgeInfo(u: line[0], v: line[1], cost: line[2]))
}
edgeInfos.sort { $0.cost < $1.cost }

for edgeInfo in edgeInfos {
    if unionFind.union(edgeInfo.u, edgeInfo.v) {
        result += edgeInfo.cost
    }
}

print(result)
*/
