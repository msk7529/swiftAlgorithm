//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/24.
//
/*
let line = readLine()!.split(separator: " ")
let numStr = line[0]
let radix = Int(line[1])!
var dic: [String: Int] = [:]
var result: Int = 0

if radix <= 10 {
    let num = Int(numStr, radix: radix)!
    print(num)
} else {
    let reversedNumStr = numStr.reversed()
    var currAscii: UInt8 = 65
    
    for i in 10...radix {
        let char = String(UnicodeScalar(currAscii))
        dic[char] = i
        currAscii += 1
    }
    
    for (index, value) in reversedNumStr.enumerated() {
        if value.isNumber {
            result += pow(radix, index) * Int(String(value))!
        } else {
            result += pow(radix, index) * dic[String(value)]!
        }
    }
    print(result)
}
*/
