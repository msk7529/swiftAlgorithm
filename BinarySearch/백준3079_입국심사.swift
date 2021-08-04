//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/05.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
var arr: [Int] = Array(repeating: 0, count: N)
var left: Int = 0
var right: Int = 0
var result: Int = .max

for i in 0..<N {
    arr[i] = Int(readLine()!)!
}

arr.sort()
left = arr.min()!
right = M * arr.max()!

while right >= left {
    let mid = (left + right) / 2
    var count = 0
    
    for curr in arr {
        if count >= M {
            break
        }
        
        let q = mid / curr
        
        if q > 0 {
            count += q
        } else {
            break
        }
    }
    
    if count >= M {
        result = min(result, mid)
        right = mid - 1
    } else {
        left = mid + 1
    }
}

print(result)
*/
