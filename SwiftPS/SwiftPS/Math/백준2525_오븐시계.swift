//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/22.
//
/*
let clock = readLine()!.split(separator: " ").map { Int(String($0))! }
let C: Int = Int(readLine()!)!

clockAfterMinuates(hour: clock[0], min: clock[1], after: C)

func clockAfterMinuates(hour: Int, min: Int, after: Int) {
    var afterH: Int = after / 60
    let afterM: Int = after % 60
    
    var resultM: Int = min + afterM
    if resultM >= 60 {
        resultM -= 60
        afterH += 1
    }
    
    var resultH: Int = hour + afterH
    if resultH >= 24 {
        resultH -= 24
    }
    
    print("\(resultH) \(resultM)")
}
*/
