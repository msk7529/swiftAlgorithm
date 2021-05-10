//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/11.
//
/*
import Foundation

let T: Int = Int(readLine()!)!
var resultH: Int = 0
var resultW: Int = 0

func input() {
    for _ in 0..<T {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        resultW = Int(ceil(Double(line[2])/Double(line[0])))
        resultH = line[2] % line[0] == 0 ? line[0] : line[2] % line[0]
        if resultW / 10 == 0 {
            print("\(resultH)0\(resultW)")
        } else {
            print("\(resultH)\(resultW)")
        }
    }
}

input()
*/
