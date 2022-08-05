//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/20.
//
/*
import Foundation

let X: Int = Int(readLine()!)!
var sticks: [Int] = [64]

while true {
    let sum = sticks.reduce(0, +)
    
    if sum == X {
        print(sticks.count)
        break
    }
    
    sticks.sort()
    
    if sum - sticks[0] / 2 >= X {
        let min = sticks.removeFirst()
        sticks.append(min / 2)
    } else {
        let min = sticks.removeFirst()
        sticks.append(contentsOf: [min / 2, min / 2])
    }
}
*/
