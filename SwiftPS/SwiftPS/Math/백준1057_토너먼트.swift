//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/26.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N, a, b) = (line[0], line[1], line[2])
var result: Int = 1

if a > b {
    swap(&a, &b)
}

while true {
    if b - a == 1 && a % 2 == 1 {
        print(result)
        break
    }
    
    a = a % 2 == 1 ? a / 2 + 1 : a / 2
    b = b % 2 == 1 ? b / 2 + 1 : b / 2
    result += 1
}
*/
