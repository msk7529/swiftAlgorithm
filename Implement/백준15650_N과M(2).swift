//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

recursive(curr: 0, currArr: [])

func recursive(curr: Int, currArr: [Int]) {
    if currArr.count == M {
        print(currArr.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in stride(from: curr + 1, through: N, by: 1) {
        recursive(curr: i, currArr: currArr + [i])
    }
}
*/
