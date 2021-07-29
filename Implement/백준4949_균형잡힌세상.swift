//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/29.
//
/*
while true {
    let line = readLine()!
    if line == "." { break }
    
    var isFinished = false
    var arr: [Character] = []
    
    for curr in line {
        if "([".contains(curr) {
            arr.append(curr)
        } else if curr == ")" {
            if !arr.isEmpty && arr.last! == "(" {
                _ = arr.removeLast()
            } else {
                isFinished = true
                break
            }
        } else if curr == "]" {
            if !arr.isEmpty && arr.last! == "[" {
                _ = arr.removeLast()
            } else {
                isFinished = true
                break
            }
        }
    }
    
    if !isFinished {
        if arr.isEmpty {
            print("yes")
        } else {
            print("no")
        }
    } else {
        print("no")
    }
}
*/
