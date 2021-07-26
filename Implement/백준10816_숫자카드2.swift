//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let M: Int = Int(readLine()!)!
let arr2: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var dic: [Int: Int] = .init()
var result: String = ""

for num in arr {
    if let value = dic[num] {
        dic[num] = value + 1
    } else {
        dic[num] = 1
    }
}

for num in arr2 {
    if let value = dic[num] {
        result += "\(value) "
    } else {
        result += "0 "
    }
}

// 이렇게 출력이 많이 발생하는 경우 한번에 출력해줘야 시간초과가 발생하지 않는다.
print(result)
*/
