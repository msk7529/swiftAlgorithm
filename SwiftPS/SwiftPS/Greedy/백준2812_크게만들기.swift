//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/18.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0]
var K = line[1]
let num = readLine()!.map { Int(String($0))! }
var stack: [Int] = []

for curr in num {
    // 현재 추가할 숫자가 그 전 숫자보다 크다면, popback을 수행한다.(현재 숫자가 직전 숫자보다 작거나 같을때까지)
    while K > 0 && !stack.isEmpty && stack.last! < curr {
        stack.removeLast()
        K -= 1
    }
    stack.append(curr)
}

while K > 0 {
    // pop이 모두 수행되지 않은 경우 남은 K만큼 pop한다.
    stack.removeLast()
    K -= 1
}

print(stack.map { String($0) }.joined())
*/
