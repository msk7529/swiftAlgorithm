//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/19.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0], m = line[1]

func numOfTwo(_ num: Int) -> Int {
    var num = num
    var count = 0
    
    while num >= 2 {
        count += num / 2
        num /= 2
    }
    
    return count
}

func numOfFive(_ num: Int) -> Int {
    var num = num
    var count = 0
    
    while num >= 5 {
        count += num / 5
        num /= 5
    }
    
    return count
}

let countOfTwo = numOfTwo(n) - numOfTwo(m) - numOfTwo(n - m)
let countOfFive = numOfFive(n) - numOfFive(m) - numOfFive(n - m)
print(min(countOfTwo, countOfFive))
*/
