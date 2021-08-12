//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/13.
//
/*
var arr: [Int] = [1, 2, 3, 4, 5]
let N = arr.count
var segmentTree: [Int] = Array(repeating: 0, count: arr.count * 4)

@discardableResult func initSegmentTree(start: Int, end: Int, node: Int) -> Int {
    if start == end {
        segmentTree[node] = arr[start]
        return segmentTree[node]
    }
    
    let mid = (start + end) / 2
    segmentTree[node] = initSegmentTree(start: start, end: mid, node: node * 2) + initSegmentTree(start: mid + 1, end: end, node: node * 2 + 1)
    return segmentTree[node]
}

func getSum(start: Int, end: Int, left: Int, right: Int, node: Int) -> Int {
    if right < start || left > end { return 0 }     // 구간을 넘은 경우
    if left <= start && end <= right { return segmentTree[node] }   // 영역 안에 구간이 전부 속한 경우
    
    let mid = (start + end) / 2
    return getSum(start: start, end: mid, left: left, right: right, node: node * 2) + getSum(start: mid + 1, end: end, left: left, right: right, node: node * 2 + 1)
}

func update(start: Int, end: Int, node: Int, index: Int, diff: Int) {
    if index < start || end < index { return }  // 영역 밖에 있는 경우
    
    segmentTree[node] += diff
    
    if start != end {
        let mid = (start + end) / 2
        update(start: start, end: mid, node: node * 2, index: index, diff: diff)
        update(start: mid + 1, end: end, node: node * 2 + 1, index: index, diff: diff)
    }
}

initSegmentTree(start: 0, end: N - 1, node: 1)  // 1번 인덱스를 트리의 루트노드로 사용
print(getSum(start: 0, end: N - 1, left: 0, right: 4, node: 1))

let currDiff = 5 - arr[0]   // 0번 인덱스를 5로 바꾸고자 함
update(start: 0, end: N - 1, node: 1, index: 0, diff: currDiff)
print(getSum(start: 0, end: N - 1, left: 0, right: 4, node: 1))
*/
