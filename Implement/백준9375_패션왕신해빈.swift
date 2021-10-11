//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/12.
//
/*
let T = Int(readLine()!)!
for _ in 0..<T {
    let N = Int(readLine()!)!
    var dic: [String: Int] = [:]
    var result: Int = 1
    
    for _ in 0..<N {
        let line = readLine()!.split(separator: " ").map { String($0) }
        dic[line[1], default: 0] += 1
    }
    
    for num in dic.values {
        // 의상의 종류에 그 의상을 입지 않은 경우의 수를 모두 더해서 모두 곱해준다.
        result *= (num + 1)
    }
    print(result - 1)   // 모두 입지 않은 경우의 수를 빼준다.
}
*/
