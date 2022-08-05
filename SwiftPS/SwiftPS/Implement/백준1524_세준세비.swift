//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/01/07.
/*
let T = Int(readLine()!)!
let _ = readLine()!
var result: String = ""

for index in 0..<T {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N = numbers[0], M = numbers[1]
    let sejun = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
    let sebi = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
    if index != T - 1 { let _ = readLine()! }
    
    var sejunIndex = 0, sebiIndex = 0
    
    while sejunIndex != N && sebiIndex != M {
        let currSejun = sejun[sejunIndex]
        let currSebi = sebi[sebiIndex]
        
        if currSejun >= currSebi {
            sebiIndex += 1
        } else {
            sejunIndex += 1
        }
    }
    
    if sejunIndex == N {
        result += "B\n"
    } else {
        result += "S\n"
    }
}
result.removeLast()
print(result)
*/
