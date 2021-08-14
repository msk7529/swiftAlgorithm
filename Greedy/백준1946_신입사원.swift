//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
import Foundation

let file: FileIO = .init()

for _ in 0..<file.readInt() {
    var arr: [(Int, Int)] = []
    
    for _ in 0..<file.readInt() {
        arr.append((file.readInt(), file.readInt()))
    }
    
    print(arr.sorted { $0.0 < $1.0 }.reduce((0, Int.max)) { result, curr in result.1 > curr.1 ? (result.0 + 1, curr.1) : result }.0)
}
*/
