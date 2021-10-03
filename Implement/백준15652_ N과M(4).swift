//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/04.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var result: String = ""

recursive(curr: 1, cnt: 0, currStr: "")

func recursive(curr: Int, cnt: Int, currStr: String) {
    if cnt == M {
        result += "\(currStr)\n"
        return
    }
    
    for i in stride(from: curr, through: N, by: 1) {
        recursive(curr: i, cnt: cnt + 1, currStr: currStr + "\(i) ")
    }
}
result.removeLast()
print(result)
*/
