//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/11.
//
/*
var T: Int = Int(readLine()!)!
var k: Int = 0
var n: Int = 0

func input() {
    for _ in 0..<T {
        k = Int(readLine()!)!
        n = Int(readLine()!)!
        
        var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)
        
        for i in 1...n {
            arr[0][i] = i
        }
        
        for i in 1...k {
            for j in 1...n {
                var sum: Int = 0
                for roomOfDownFloor in 1...j {
                    sum += arr[i-1][roomOfDownFloor]
                }
                arr[i][j] = sum
            }
        }
        print(arr[k][n])
    }
}

input()
*/
