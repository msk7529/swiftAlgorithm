//
//  백준1197_최소스패닝트리.swift
//  Algorithm
//
//  Created by kakao on 2021/05/02.
//
/*
struct EdgeInfo {
    var u: Int
    var v: Int
    var weight: Int
}

let file: FileIO = .init()
var V: Int = file.readInt()
var E: Int = file.readInt()
var unionfind: UnionFind = .init(numOfVertex: V)
var edges: [EdgeInfo] = []
var result: Int = 0

func input() {
    for _ in 0..<E {
        edges.append(EdgeInfo(u: file.readInt(), v: file.readInt(), weight: file.readInt()))
    }
    edges.sort { $0.weight < $1.weight }
        
    for edge in edges {
        if unionfind.union(edge.u, edge.v) {
            result += edge.weight
        }
    }
    print(result)
}

input()
*/
