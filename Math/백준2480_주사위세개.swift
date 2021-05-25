//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/25.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
var dic: [Int: Int] = [:]

for num in line {
    if let value = dic[num] {
        dic[num] = value + 1
    } else {
        dic[num] = 1
    }
}

if dic.count == 1 {
    print(10000 + line.first! * 1000)
} else if dic.count == 3 {
    print(line.max()! * 100)
} else {
    for (key, value) in dic {
        if value == 2 {
            print(1000 + key * 100)
        }
    }
}
*/
