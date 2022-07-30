//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/31

/*
 재풀이 성공. 그림(수직선)을 잘 기억하자..
 */

/*
let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var totalSum: Int = 0

if arr.first! > 1 {
    print("1")
} else {
    totalSum = 1
    for i in stride(from: 1, to: N, by: 1) {
        if totalSum + 1 >= arr[i] {
            totalSum += arr[i]
        } else {
            break
        }
    }
    print(totalSum + 1)
}
*/
