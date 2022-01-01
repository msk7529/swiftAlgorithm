//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/01/01.
//
while true {
    var num = Int(readLine()!)!
    if num == 0 { break }
    
    var result: Int = 0
    
    while num >= 10 {
        result += (num % 10)
        num /= 10
    }
    print(num)
}
