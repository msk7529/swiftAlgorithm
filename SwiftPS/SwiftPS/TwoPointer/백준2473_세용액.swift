//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/05.
//
/*
let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var left = 0
var right = N - 1
var sum: Int = .max
var result: [Int] = []

loop: for first in 0...N-2 {
    // 첫번째 용액을 고정시켜놓고 투포인터를 진행
    left = first + 1
    right = N - 1
    
    while right > left {
        let currSum = arr[first] + arr[left] + arr[right]
        
        if abs(currSum) < abs(sum) {
            sum = currSum
            result = [arr[first], arr[left], arr[right]]
        }
        
        if currSum < 0 {
            left += 1
        } else if currSum == 0 {
            break loop
        } else {
            right -= 1
        }
    }
}

print("\(result[0]) \(result[1]) \(result[2])")
*/
