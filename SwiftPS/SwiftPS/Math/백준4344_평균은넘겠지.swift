//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/09.
//
/*
import Foundation

let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    var sum: Double = 0
    for i in 1...line[0] {
        sum += Double(line[i])
    }
    let ave: Double = sum / Double(line[0])
    var num: Int = 0
    
    for i in 1...line[0] {
        if Double(line[i]) > ave {
            num += 1
        }
    }
    
    let result: String = .init(format: "%.3f%", (Double(num) * 100 / Double(line[0])))
    print("\(result)%")
}
*/
