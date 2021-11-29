//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/11/29.
//
/*
let n = Int(readLine()!)!
var set: Set<String> = .init()
var result: String = ""

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { String($0) }
    let name = line[0], command = line[1]
    
    if command == "enter" {
        set.insert(name)
    } else {
        set.remove(name)
    }
}

Array(set).sorted { $0 > $1 }.forEach { result += "\($0)\n" }
result.removeLast()
print(result)
*/
