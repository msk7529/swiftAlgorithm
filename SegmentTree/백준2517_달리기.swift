//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/12.
//
/*
import Foundation

func getSum(_ index: Int) -> Int {
    var ans = 0, index = index
    
    while index > 0 {
        ans += segmentTree[index]
        index -= (index & -index)
    }
    return ans
}

func update(_ index: Int, _ num: Int) {
    var index = index
    
    while index <= N {
        segmentTree[index] += num
        index += (index & -index)
    }
}

let file: FileIO = .init()
let N = file.readInt()
var arr: [Int] = []
var segmentTree: [Int] = Array(repeating: 0, count: 500001)
var result: String = ""

for _ in 0..<N {
    arr.append(file.readInt())
}

let temp = arr.sorted()
for i in 0..<N {
    // 좌표압축
    arr[i] = temp.lowerBound(value: arr[i]) + 1
}

for i in 0..<N {
    // getSum(arr[i] - 1): 세그먼트트리의 리프노드에 arr[i] - 1 이하의 값들이 몇개 있는지 확인
    result.append("\(i + 1 - (getSum(arr[i] - 1)))\n")
    update(arr[i], 1)
}

result.removeLast()
print(result)
*/
