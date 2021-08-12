//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/13.
//
/*
import Foundation

func getSum(_ index: Int) -> Int {
    var ans = 0, index = index
    
    while index > 0 {
        ans += penwickTree[index]
        index -= (index & -index)
    }
    return ans
}

func update(_ index: Int, _ diff: Int) {
    var index = index
    
    while index <= N {
        penwickTree[index] += diff
        index += (index & -index)
    }
}

let file: FileIO = .init()
let N = file.readInt(), M = file.readInt()
var arr: [Int] = Array(repeating: 0, count: N + 1)
var penwickTree: [Int] = Array(repeating: 0, count: N + 1)
var result: String = ""

for _ in 0..<M {
    let a = file.readInt(), b = file.readInt(), c = file.readInt()
    
    if a == 0 {
        let intervalSum = getSum(max(b, c)) - getSum(min(b, c) - 1)
        result += "\(intervalSum)\n"
    } else {
        // 펜윅트리를 통해 구간합, 업데이트를 할 땐 무턱대고 업데이트 하는게 아니라 기존값과의 차이만큼만 업데이트 해줘야 한다.
        let diff = c - arr[b]
        arr[b] = c
        update(b, diff)
    }
}

if !result.isEmpty {
    result.removeLast()
}
print(result)
*/
