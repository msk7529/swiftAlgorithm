//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/24

// 비교적 쉽게 생각할 수 있는 구현문제

/*
func maxTrailing(arr: [Int]) -> Int {
    var isSuccess: Bool = false
    var minValue = arr[0]
    var result = 0
    
    for i in stride(from: 1, to: arr.count, by: 1) {
        if arr[i] > minValue {
            result = max(result, arr[i] - minValue)
            isSuccess = true
        } else {
            minValue = arr[i]
        }
    }

    return isSuccess ? result : -1
}

print(maxTrailing(arr: [2, 3, 10, 2, 4, 8, 1]))
print(maxTrailing(arr: [7, 9, 5, 6, 3, 2]))
*/
