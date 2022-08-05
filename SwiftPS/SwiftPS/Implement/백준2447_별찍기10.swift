//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/14.
//
/*
func squre(_ n: Int) -> [[Int]] {
    if n == 3 { return [[1, 1, 1], [1, 0, 1], [1, 1, 1]] }
    
    var result: [[Int]] = Array(repeating: [], count: n)
    let tmp = squre(n / 3)
    
    for i in 0..<n {
        result[i].append(contentsOf: tmp[i % (n/3)])
        result[i].append(contentsOf: tmp[i % (n/3)])
        result[i].append(contentsOf: tmp[i % (n/3)])
    }
    
    // 가운데는 공백으로 채운다.
    for i in n/3..<(n/3)*2 {
        for j in n/3..<(n/3)*2 {
            result[i][j] = 0
        }
    }
    return result
}
 
let result = squre(Int(readLine()!)!)
print(result.map { $0.map { $0 == 1 ? "*" : " " }.joined() }.joined(separator: "\n"))

 
// ---- 다른 사람 깔끔한 풀이.

 
/*
let input = Int(readLine()!)!
printStar(input, pattern: ["*"])

func printStar(_ input: Int, pattern: [String]) {
    if input == 1 {
        pattern.forEach { print($0) }
        return
    }
    let topBottom = pattern.map { String(repeating: $0, count: 3) }
    let center = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
    let newPattern = topBottom + center + topBottom
    
    printStar(input/3, pattern: newPattern)
}
*/
*/
