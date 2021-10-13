//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/14.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr: [Int] = []
var currIdx: Int = 0
var result: Int = 0

while arr.count < 1002 {
    if currIdx == 0 {
        arr.append(1)
        currIdx += 1
    } else {
        let prev = arr[currIdx - 1]
        for _ in 0..<prev + 1 {
            arr.append(prev + 1)
        }
        currIdx += prev + 1
    }
}

for i in stride(from: input[0] - 1, through: input[1] - 1, by: 1) {
    result += arr[i]
}
print(result)
*/
