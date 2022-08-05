//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/23.
//
/*
let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    var success: Bool = false
    let (M, N, x, y) = (line[0], line[1], line[2], line[3])
    
    let limit: Int = (lcm(M, N) - y) / N
    
    for i in 0...limit {
        if (y - x + i * N) % M == 0 {
            success = true
            print(y + i * N)
            break
        }
    }
    
    if !success {
        print("-1")
    }
}
*/
