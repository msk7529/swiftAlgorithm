//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/08.
//
/*
var arr: [Int] = []
var result: String = ""

for _ in 0..<Int(readLine()!)! {
    let line = readLine()!.split(separator: " ").map { String($0) }
    let command = line[0]
    var num: Int = 0
    
    if line.count == 2 {
        num = Int(line[1])!
    }
    
    if command == "push" {
        arr.append(num)
    } else if command == "pop" {
        if arr.isEmpty {
            result += "-1\n"
        } else {
            result += "\(arr.removeLast())\n"
        }
    } else if command == "size" {
        result += "\(arr.count)\n"
    } else if command == "empty" {
        result += "\(arr.isEmpty ? 1 : 0)\n"
    } else {
        result += "\(arr.isEmpty ? -1 : arr.last!)\n"
    }
}

if !result.isEmpty {
    result.removeLast()
}
print(result)
*/
