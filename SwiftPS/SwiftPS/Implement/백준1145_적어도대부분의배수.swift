//
//  백준1145_적어도대부분의배수.swift
//  Algorithm
//
//  Created by kakao on 2021/08/03.
//
/*
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: Int = .max

for divNum in arr.min()!...1000000 {
    var cnt: Int = 0
    for curr in arr {
        if divNum % curr == 0 {
            cnt += 1
        }
    }
    
    if cnt >= 3 {
        print(divNum)
        break
    }
}
*/
