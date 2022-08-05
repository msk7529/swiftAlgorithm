//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/27.
//
/*
투포인터 알고리즘: 일차원 배열이 있고, 이 배열에서 각자 다른 원소를 가리키고 있는 두개의 포인터를 조작해가면서 원하는 결과를 얻는 형태.
*/
/*
let N = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var result = Int.max
var left = 0
var right = N - 1
var idx1 = 0
var idx2 = 0

while right > left {
    // 이분탐색과는 달리 여기서는 right >= left로 하면 오답임 ...;;
    let sum = arr[left] + arr[right]
    
    if abs(sum) < result {
        // 최소값이 갱신될 때마다 양쪽포인터 갱신
        // 갱신시와 갱신조건에서 반드시 절대값을 취해야함.
        result = abs(sum)
        
        idx1 = left
        idx2 = right
    }
    
    // 오름차순 정렬했으므로
    if sum < 0 {
        // 합이 0보다 작으면 left를 증가시켜(하한선을 증가시킴) 합을 좀 더 늘려본다.
        left += 1
    } else {
        right -= 1
    }
}

print("\(arr[idx1]) \(arr[idx2])")
*/
