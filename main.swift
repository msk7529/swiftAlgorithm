//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
import Foundation

let num: Int = Int(readLine()!)!
var result: Int = 0

if num < 100 {
    print(num)
} else {
    result = 99
    for number in 100...num {
        if check(number) {
            result += 1
        }
    }
    print(result)
}

func check(_ num: Int) -> Bool {
    if num == 1000 {
        return false
    }
    
    let firstNum: Int = num / 100
    let secondNum : Int = (num - firstNum * 100) / 10
    let thirdNum: Int = num - firstNum * 100 - secondNum * 10
    
    let firstDiv: Int = firstNum - secondNum
    let secondDiv: Int = secondNum - thirdNum
    
    if firstDiv == secondDiv { return true }
    return false
}


