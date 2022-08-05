//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = input[0]
let M: Int = input[1]
var arr: [Int] = []

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

var minLength: Int = 1  // 0으로 주면, maxLength가 1일때 mid가 0으로 되어 mid로 나누는 과정에서 런타임에러 발생
var maxLength: Int = arr.max()!

while maxLength >= minLength {
    let mid = (minLength + maxLength) / 2
//    var count: Int = 0
//
//    for curr in arr {
//        count += curr / mid
//    }
    let count = arr.reduce(0, { $0 + ($1 / mid) })
    
    if count >= M {
        // mid로 잘랐을 때 만들 수 있는 랜선의 개수가 M보다 크면 minLength를 높인다.
        minLength = mid + 1
    } else {
        // mid로 잘랐을 때 만들 수 있는 랜선의 개수가 M보다 작으면 maxLength를 낮춘다.
        maxLength = mid - 1
    }
}

print(maxLength)
*/
