//
//  백준10809_알파벳찾기.swift
//  Algorithm
//
//  Created by kakao on 2021/04/24.
//
/*
var dic: [UInt8: Int] = [:]
let input: String = readLine()!

for (index, char) in input.enumerated() {
    let key: UInt8 = char.asciiValue!
    if dic[key] == nil {
        dic[key] = index
    }
}

var result: String = ""
for curr in "abcdefghijklmnopqrstuvwxyz" {
    if let value = dic[curr.asciiValue!] {
        result += "\(value) "
    } else {
        result += "-1 "
    }
}

print(result)
*/
