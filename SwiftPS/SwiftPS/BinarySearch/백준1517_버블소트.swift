//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/10.
//
/*
let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var temp: [Int] = Array(repeating: 0, count: N)
var inversionCount: Int = 0

func mergeSort(_ left: Int, _ right: Int) {
    if left == right { return }
    
    let mid = (left + right) / 2
    
    mergeSort(left, mid)
    mergeSort(mid + 1, right)
    merge(left, mid, right)
}

func merge(_ left: Int, _ mid: Int, _ right: Int) {
    var x = left, y = mid + 1
    
    for i in 0...right-left {
        if x > mid {
            temp[i] = arr[y]
            y += 1
        } else if y > right {
            temp[i] = arr[x]
            x += 1
        } else {
            if arr[x] > arr[y] {
                inversionCount += (mid - x + 1)
                temp[i] = arr[y]
                y += 1
            } else {
                temp[i] = arr[x]
                x += 1
            }
        }
    }
    
    for i in 0...right-left {
        arr[left + i] = temp[i]
    }
}

mergeSort(0, N - 1)
print(inversionCount)
*/
