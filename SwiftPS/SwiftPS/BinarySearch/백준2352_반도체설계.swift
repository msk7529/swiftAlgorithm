//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/31.
//
/*
let n = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var tmpArr: [Int] = [arr[0]]

for curr in arr {
    if tmpArr.last! < curr {
        tmpArr.append(curr)
    } else {
        let index = tmpArr.lowerBound(value: curr)
        tmpArr[index] = curr
    }
}

print(tmpArr.count)
*/
