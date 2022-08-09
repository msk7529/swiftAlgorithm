//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/08/10

/*
 재풀이 후 성공. while문은 좀 더 간략히 줄일 수 있음.
 */

/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0]
var K = line[1]
let num = readLine()!.map { Int(String($0))! }
var currNum: [Int] = []
var result: [Int] = []

for number in num {
    guard K != 0 else {
        currNum.append(number)
        continue
    }
    
    while K > 0 {
        guard let back = currNum.last else {
            break
        }
        
        if back < number {
            currNum.removeLast()
            K -= 1
        } else {
            break
        }
    }
    
    currNum.append(number)
}

while K > 0 {
    currNum.removeLast()
    K -= 1
}

print(currNum.map { String($0) }.joined())
*/
