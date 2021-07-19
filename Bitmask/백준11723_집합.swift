//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/19.
//
/*
let M: Int = Int(readLine()!)!
var curr: Int = 0

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { String($0) }
    
    if line[0] == "add" {
        // 해당 비트를 추가
        curr |= (1 << Int(line[1])!)
    } else if line[0] == "remove" {
        // 해당 비트를 제거
        curr &= ~(1 << Int(line[1])!)
    } else if line[0] == "check" {
        // 해당 비트가 활성화 되어있는지 확인
        let value = curr & (1 << Int(line[1])!)
        print(value > 0 ? "1" : "0")
    } else if line[0] == "toggle" {
        // 해당 비트를 토글
        curr ^= (1 << Int(line[1])!)
    } else if line[0] == "all" {
        // 모든 비트를 1로 초기화
        curr = (1 << 21) - 1
    } else if line[0] == "empty" {
        // 모든 비트를 0으로 초기화
        curr = 0
    }
}
*/
