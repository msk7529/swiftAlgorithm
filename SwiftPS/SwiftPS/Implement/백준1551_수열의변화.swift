//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/12/15.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], K = line[1]
var arr = readLine()!.split(separator: ",").map { Int(String($0))! }

for _ in 0..<K {
    var newArr: [Int] = []
    for i in 0..<arr.count - 1 {
        newArr.append(arr[i+1] - arr[i])
    }
    arr = newArr
}

var result = ""
for value in arr {
    result += "\(value),"
}
result.removeLast()
print(result)
*/
