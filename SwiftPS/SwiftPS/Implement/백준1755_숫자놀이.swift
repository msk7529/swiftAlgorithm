//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/11/30.
//
/*
let dic: [String: String] = ["0": "zero", "1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
var result: [(String, Int)] = []
var ret: String = ""

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = line[0], N = line[1]

for i in M...N {
    let num = i
    if num < 10 {
        let tmp = String(num)
        let numToStr = dic[tmp]!
        result.append((numToStr, num))
    } else {
        let tmp1 = String(num / 10)
        let tmp2 = String(num - (num / 10) * 10)
        let numToStr = dic[tmp1]! + " " + dic[tmp2]!
        result.append((numToStr, num))
    }
}
result.sort { $0.0 < $1.0 }

for i in 0..<result.count {
    if i >= 10 && i.isMultiple(of: 10) { ret += "\n" }
    ret += "\(result[i].1) "
}
print(ret)
*/
