//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/10.
//
// 펜윅트리를 이용한 inversionCount 구하기. https://www.geeksforgeeks.org/count-inversions-array-set-3-using-bit/
/*
let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var fenwick: [Int] = Array(repeating: 0, count: N + 1)

func getInversionCount() -> Int {
    var invCount = 0
    
    convert()   // 좌표압축
    
    for i in stride(from: N - 1, through: 0, by: -1) {
        invCount += getSum(index: arr[i] - 1)
        updateBit(index: arr[i], val: 1)    // 해당 원소가 나타났음을 펜윅트리에 반영
    }
    
    return invCount
}

func convert() {
    // 배열의 크기와 배열의 원소가 가질 수 있는 범위가 서로 다른 경우 펜윅트리를 그대로 사용할 수 없다. 예를 들어 원소에 음수가 포함되는 경우.
    // 이런 경우를 대비하여, 좌표압축을 통해 원소값의 상한이 배열크기 이내로 들어오도록 조정한다.
    var temp = arr
    temp.sort()
    
    for i in 0..<N {
        arr[i] = temp.lowerBound(value: arr[i]) + 1
    }
    // 이렇게 하면, [-1, -100, 1] -> [2, 1, 3]이 된다.
}

func getSum(index: Int) -> Int {
    // index 뒤에 있는 원소들 중 자신보다 작은 원소의 개수를 구한다.
    var sum = 0
    var index = index
    
    while index > 0 {
        sum += fenwick[index]
        index -= (index & (-index)) //
    }
    return sum
}

func updateBit(index: Int, val: Int) {
    // index가 존재하는 구간에 1을 더한다.
    var index = index
    
    while index <= N {
        fenwick[index] += val
        index += (index & -index)
    }
}
*/
