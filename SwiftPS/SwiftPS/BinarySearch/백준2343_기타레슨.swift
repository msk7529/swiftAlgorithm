//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/04.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var left = arr.max()!
var right = arr.reduce(0, +)
var result: Int = .max

while right >= left {
    let mid = (left + right) / 2
    var count = 0
    var currSum = 0
    
    for i in 0..<N {
        if currSum + arr[i] > mid {
            currSum = 0
            count += 1
        }
        currSum += arr[i]
    }
    
    if currSum > 0 {
        count += 1
    }
    
    if count > M {
        left = mid + 1
    } else {
        // 이 문제의 함정. count == m 이 아닌 count <= m 으로 조건을 걸어야 함.
        // 꼭 m개의 블루레이를 전부 사용하지 않고도 모든 기타 레슨 동영상을 녹화할 수 있는 경우가 있기 때문.
        // 반드시 m개의 블루레이를 모두 사용해야 한다는 조건은 문제에 없었음
        result = min(result, mid)
        right = mid - 1
    }
}

print(result)
*/
