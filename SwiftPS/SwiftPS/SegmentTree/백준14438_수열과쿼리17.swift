//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/14.
//
/*
func initSegmentTree(start: Int, end: Int, node: Int) {
    if start == end {
        segmentTree[node] = arr[start]
        return
    }
    
    let mid = (start + end) / 2
    
    initSegmentTree(start: start, end: mid, node: node * 2)
    initSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    
    segmentTree[node] = min(segmentTree[node * 2], segmentTree[node * 2 + 1])
}

func query(start: Int, end: Int, left: Int, right: Int, node: Int) -> Int {
    if right < start || left > end { return Int.max }     // 구간을 넘은 경우
    if left <= start && end <= right { return segmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2     // (start + end) >> 1
    return min(query(start: start, end: mid, left: left, right: right, node: node * 2), query(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1))
}

func update(start: Int, end: Int, node: Int, index: Int, newValue: Int) {
    if index < start || index > end {   // 영역 밖에 있는 경우
        return
    }
    
    if start == end {
        segmentTree[node] = newValue
        return
    }
    
    let mid = (start + end) / 2     // (start + end) >> 1
    update(start: start, end: mid, node: node * 2, index: index, newValue: newValue)
    update(start: mid + 1, end: end, node: node * 2 + 1, index: index, newValue: newValue)
    
    segmentTree[node] = min(segmentTree[node * 2], segmentTree[node * 2 + 1])
}

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var segmentTree: [Int] = Array(repeating: Int.max, count: N * 4)
let M = Int(readLine()!)!
var result: String = ""

initSegmentTree(start: 0, end: N - 1, node: 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0], b = line[1], c = line[2]
    
    if a == 1 {
        update(start: 0, end: N - 1, node: 1, index: b - 1, newValue: c)
    } else {
        result += "\(query(start: 0, end: N - 1, left: b - 1, right: c - 1, node: 1))\n"
    }
}

result.removeLast()
print(result)
*/
