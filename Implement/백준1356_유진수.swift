//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/23.
//
/*
let N = readLine()!
let num = Int(N)!
var currPos = N.count - 1
var isSuccess: Bool = false

while currPos >= 0 {
    let front = Array(N.map { String($0) }[0...currPos])
    let back = currPos == N.count - 1 ? [] : Array(N.map { String($0) }[currPos+1..<N.count])
    
    if front.isEmpty || back.isEmpty {
        currPos -= 1
        continue
    }
    
    let frontMul = front.map { Int($0)! }.reduce(1, *)
    let backMul = back.map { Int($0)! }.reduce(1, *)
    
    if frontMul == backMul {
        isSuccess = true
        break
    }
    
    currPos -= 1
}

print(isSuccess ? "YES" : "NO")
*/
