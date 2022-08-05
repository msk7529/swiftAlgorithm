//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]
var bosuk: [(Int, Int)] = []
var bag: [Int] = []
var idx: Int = 0
var result: Int = 0
var pq: PriorityQueue<Int> = .init(comparer: >)

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    bosuk.append((line[0], line[1]))
}

for _ in 0..<K {
    bag.append(Int(readLine()!)!)
}

bosuk.sort { $0.0 < $1.0 }  // 보석들을 무게를 기준으로 오름차순 정렬
bag.sort()  // 가방들을 수용가능 무게를 기준으로 오름차순 정렬

// 수용가능 무게가 작은 가방부터 최대한 비싼 보석을 넣는다.
for curr in bag {
    while idx < N && bosuk[idx].0 <= curr {
        // 현재 가방의 무게제한에 충족하는 보석을 우선순위큐에 모두 넣는다.
        // '모두' 넣음으로써 자연스럽게 다음 가방에서도 보석을 pq에서 확인할 수 있다.
        pq.enqueue(bosuk[idx].1)
        idx += 1
    }
    
    if !pq.isEmpty {
        result += pq.dequeue()!
    }
}

print(result)
*/
