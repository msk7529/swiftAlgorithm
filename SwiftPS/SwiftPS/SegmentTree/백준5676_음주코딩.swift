//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/14.
//
/*
func initSegmentTree(start: Int, end: Int, node: Int) {
    if start == end {
        segmentTree[node] = arr[start] > 0 ? 1 : arr[start] < 0 ? -1 : 0
        return
    }
    
    let mid = (start + end) / 2
    
    initSegmentTree(start: start, end: mid, node: node * 2)
    initSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    
    segmentTree[node] = segmentTree[node * 2] * segmentTree[node * 2 + 1]
}

func query(start: Int, end: Int, left: Int, right: Int, node: Int) -> Int {
    if right < start || left > end { return 1 }     // 구간을 넘은 경우
    if left <= start && end <= right { return segmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2     // (start + end) >> 1
    return query(start: start, end: mid, left: left, right: right, node: node * 2) * query(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1)
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
    
    segmentTree[node] = segmentTree[node * 2] * segmentTree[node * 2 + 1]
}

var segmentTree: [Int] = []
var arr: [Int] = []
var resultString: [String] = []

while true {
    guard let tc = readLine(), !tc.isEmpty else { break }
    
    let input = tc.split(separator: " ").map { Int(String($0))! }
    let N = input[0], K = input[1]
    var result: String = ""
    
    arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    segmentTree = Array(repeating: 0, count: N * 4)
    initSegmentTree(start: 0, end: N - 1, node: 1)
    
    for _ in 0..<K {
        let line = readLine()!.split(separator: " ")
        let a = String(line[0]), b = Int(String(line[1]))!, c = Int(String(line[2]))!
        
        if a == "C" {
            let newValue = c > 0 ? 1 : c < 0 ? -1 : 0
            update(start: 0, end: N - 1, node: 1, index: b - 1, newValue: newValue)
            // arr[b - 1] = newValue  이 문제에서는 필요없음
        } else {
            let qResult = query(start: 0, end: N - 1, left: b - 1, right: c - 1, node: 1)
            let char = qResult > 0 ? "+" : qResult < 0 ? "-" : "0"
            result += char
        }
    }
    resultString.append(result)
}

for curr in resultString {
    print(curr)
}
*/
