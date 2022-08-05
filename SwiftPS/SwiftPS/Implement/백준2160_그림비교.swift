//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/03.
/*
let N = Int(readLine()!)!
var arr: [[[String]]] = [[]]
var ret1 = 0, ret2 = 0, minNum = Int.max

for _ in 1...N {
    var curr: [[String]] = []
    for _ in 1...5 {
        let chars = readLine()!.map { String($0) }
        curr.append(chars)
    }
    arr.append(curr)
}

for i in 1...N-1 {
    for j in stride(from: i + 1, through: N, by: 1) {
        var cnt: Int = 0
        for k1 in 0..<5 {
            for k2 in 0..<7 {
                if arr[i][k1][k2] != arr[j][k1][k2] {
                    cnt += 1
                }
            }
        }
        if minNum > cnt {
            minNum = cnt
            ret1 = i
            ret2 = j
        }
    }
}
print("\(ret1) \(ret2)")
*/
