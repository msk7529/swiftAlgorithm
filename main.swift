//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/09.
//

var N: Int = Int(readLine()!)!
var result: Int = 1
var loopCnt: Int = 1
var endNum: Int = 1

if N == 1 {
    print("1")
} else {
    while true {
        endNum += 6 * loopCnt
        result += 1
        loopCnt += 1
        if endNum >= N {
            print(result)
            break
        }
    }
}
