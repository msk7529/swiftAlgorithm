//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/14.
//
/*
func initSegmentTree(start: Int, end: Int, node: Int) {
    if start == end {
        segmentTree[node] = (arr[start], start)
        return
    }
    
    let mid = (start + end) / 2
    
    initSegmentTree(start: start, end: mid, node: node * 2)
    initSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    
    if segmentTree[node * 2].0 == segmentTree[node * 2 + 1].0 {
        segmentTree[node] = (segmentTree[node * 2].0, min(segmentTree[node * 2].1, segmentTree[node * 2 + 1].1))
    } else if segmentTree[node * 2].0 < segmentTree[node * 2 + 1].0 {
        segmentTree[node] = segmentTree[node * 2]
    } else {
        segmentTree[node] = segmentTree[node * 2 + 1]
    }
}

func query(start: Int, end: Int, left: Int, right: Int, node: Int) -> (Int, Int) {
    if right < start || left > end { return (Int.max, Int.max) }     // 구간을 넘은 경우
    if left <= start && end <= right { return segmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2     // (start + end) >> 1
    let lqResult = query(start: start, end: mid, left: left, right: right, node: node * 2)
    let rqResult = query(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1)
    
    if lqResult.0 == rqResult.0 {
        return lqResult.1 < rqResult.1 ? lqResult : rqResult
    } else if lqResult.0 < rqResult.0 {
        return lqResult
    } else {
        return rqResult
    }
}

func update(start: Int, end: Int, node: Int, index: Int, newValue: Int) {
    if index < start || index > end {   // 영역 밖에 있는 경우
        return
    }
    
    if start == end {
        segmentTree[node].0 = newValue
        return
    }
    
    let mid = (start + end) / 2     // (start + end) >> 1
    update(start: start, end: mid, node: node * 2, index: index, newValue: newValue)
    update(start: mid + 1, end: end, node: node * 2 + 1, index: index, newValue: newValue)
    
    if segmentTree[node * 2].0 == segmentTree[node * 2 + 1].0 {
        segmentTree[node] = (segmentTree[node * 2].0, min(segmentTree[node * 2].1, segmentTree[node * 2 + 1].1))
    } else if segmentTree[node * 2].0 < segmentTree[node * 2 + 1].0 {
        segmentTree[node] = segmentTree[node * 2]
    } else {
        segmentTree[node] = segmentTree[node * 2 + 1]
    }
}

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var segmentTree: [(Int, Int)] = Array(repeating: (Int.max, Int.max), count: N * 4)  // $0: 값, $1: 인덱스
let M = Int(readLine()!)!
var result: String = ""

initSegmentTree(start: 0, end: N - 1, node: 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0]
    
    if a == 1 {
        let b = line[1], c = line[2]
        update(start: 0, end: N - 1, node: 1, index: b - 1, newValue: c)
    } else {
        result += "\(query(start: 0, end: N - 1, left: 0, right: N - 1, node: 1).1 + 1)\n"
    }
}

result.removeLast()
print(result)
*/
