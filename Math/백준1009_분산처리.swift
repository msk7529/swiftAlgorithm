//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/22.
//
/*
let T: Int = Int(readLine()!)!
var powArr: [[Int]] = Array(repeating: [], count: 10)

structPowArr()

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    var index: Int = line[1] % powArr[line[0] % 10].count
    index = index == 0 ? powArr[line[0] % 10].count - 1 : index - 1
    let result: Int = powArr[line[0] % 10][index]
    print(result == 0 ? 10 : result)
}

func structPowArr() {
    for i in 1...10 {
        var curr: Int = i
        while true {
            if powArr[i % 10].contains(curr % 10) {
                break
            }
            powArr[i % 10].append(curr % 10)
            curr *= i
        }
    }
}
*/
