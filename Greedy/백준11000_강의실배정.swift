//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/17.
//
/*
let N = Int(readLine()!)!
var arr: [(Int, Int)] = []
var pq: PriorityQueue<Int> = .init(comparer: <) // 수업 종료시간을 기준으로 하는 minHeap

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((line[0], line[1]))
}

arr.sort { $0.0 < $1.0 }    // 수업시간을 시작시간 기준으로 오름차순 정렬

for curr in arr {
    if pq.isEmpty {
        pq.enqueue(curr.1)
    } else if pq.peek()! <= curr.0 {
        // 큐에서 종료시간이 가장 작은 Element의 종료시간이 현재 탐색중인 수업의 시작시간보다 작거나 같으면 회의실을 더 배정할 필요없다. pop하고 다시 push
        pq.dequeue()
        pq.enqueue(curr.1)
    } else {
        pq.enqueue(curr.1)
    }
}

print(pq.count)
*/
