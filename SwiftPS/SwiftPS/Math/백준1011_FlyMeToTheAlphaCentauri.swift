//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/13.
//
/*
import Foundation

let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let dist: Int = line[1] - line[0]
    let n: Int = Int(sqrt(Double(dist)))
    
    if n * n == dist {
        // dist가 제곱수에 해당하는 경우
        print(2 * n - 1)
    } else if n * n < dist && dist <= n * n + n {
        print(2 * n)
    } else {
        print(2 * n + 1)
    }
}
*/
