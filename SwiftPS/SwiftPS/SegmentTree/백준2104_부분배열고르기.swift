//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
func initMinSegmentTree(start: Int, end: Int, node: Int) {
    if start == end {
        minSegmentTree[node] = start
        return
    }
    
    let mid = (start + end) / 2
    
    initMinSegmentTree(start: start, end: mid, node: node * 2)
    initMinSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    
    minSegmentTree[node] = arr[minSegmentTree[node * 2]] < arr[minSegmentTree[node * 2 + 1]] ? minSegmentTree[node * 2] : minSegmentTree[node * 2 + 1]
}

func minQuery(start: Int, end: Int, left: Int, right: Int, node: Int) -> Int {
    if right < start || left > end { return Int.max }     // 구간을 넘은 경우
    if left <= start && end <= right { return minSegmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2     // (start + end) >> 1
    let lqeury = minQuery(start: start, end: mid, left: left, right: right, node: node * 2)
    let rquery = minQuery(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1)
    let arrValue1 = lqeury == Int.max ? Int.max : arr[lqeury]
    let arrValue2 = rquery == Int.max ? Int.max : arr[rquery]
        
    return arrValue1 < arrValue2 ? lqeury : rquery
}

func initSumSegmentTree(start: Int, end: Int, node: Int) {
    if start == end {
        sumSegmentTree[node] = arr[start]
        return
    }
    
    let mid = (start + end) / 2
    
    initSumSegmentTree(start: start, end: mid, node: node * 2)
    initSumSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    
    sumSegmentTree[node] = sumSegmentTree[node * 2] + sumSegmentTree[node * 2 + 1]
}

func sumQuery(start: Int, end: Int, left: Int, right: Int, node: Int) -> Int {
    if right < start || left > end { return 0 }     // 구간을 넘은 경우
    if left <= start && end <= right { return sumSegmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2     // (start + end) >> 1
    return sumQuery(start: start, end: mid, left: left, right: right, node: node * 2) + sumQuery(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1)
}

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var minSegmentTree: [Int] = Array(repeating: 0, count: N * 4)
var sumSegmentTree: [Int] = Array(repeating: 0, count: N * 4)
var result: String = ""

initMinSegmentTree(start: 0, end: N - 1, node: 1)
initSumSegmentTree(start: 0, end: N - 1, node: 1)

print(devideQunquer(left: 0, right: N - 1))

func devideQunquer(left: Int, right: Int) -> Int {
    if left > right { return 0 }

    let index = minQuery(start: 0, end: N - 1, left: left, right: right, node: 1)
    var result = arr[index] * sumQuery(start: 0, end: N - 1, left: left, right: right, node: 1)
    
    result = max(result, devideQunquer(left: left, right: index - 1))   // right에 index가 아닌 index - 1로 해야하는것 주의.
    result = max(result, devideQunquer(left: index + 1, right: right))

    return result
}
*/
