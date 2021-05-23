//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/24.
//
/*
let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    var arr: [Int] = []
    
    for i in stride(from: 1, to: line.count, by: 1) {
        for j in stride(from: i + 1, to: line.count, by: 1) {
            arr.append(gcd(line[i], line[j]))
        }
    }
    print(arr.reduce(0, +))
}
*/
