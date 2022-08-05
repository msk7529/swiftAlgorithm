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

recursive(curr: 1, currArr: [])

func recursive(curr: Int, currArr: [Int]) {
    if currArr.count == M {
        result += "\(currArr.map { String($0) }.joined(separator: " "))\n"
        return
    }
    
    for i in stride(from: 1, through: N, by: 1) {
        // 시간 줄이려면, currArr 배열 매개변수 대신 String으로 바꿔야 함.
        recursive(curr: i, currArr: currArr + [i])
    }
}
result.removeLast()
print(result)
*/
