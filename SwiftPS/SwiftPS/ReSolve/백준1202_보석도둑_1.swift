//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/31

/*
 잘못된 접근방식으로 풀려고 했음. 보석의 가치를 기준으로 내림차순하여 루프를 돌면서 해당 보석의 무게를 보고, 넣을 수 있는 가방중 최소무게의 가방에 넣을려고(lowerBound) 했는데 이러면 처리된 가방을 배열에서 삭제해야 해서 문제가 발생.
 보석과 가방 둘 다 무게를 기준으로 오름차순 한 다음, 가방에 대해 루프를 돌면서 넣을 수 있는 보석들을 모두 Pq에 넣어서 deqeue하는 방식으로 풀어야 함..
 핵심 생각: 용량이 적은 가방에 들어가지 못한 보석이 용량이 큰 가방에는 들어갈 수도 있다.(반대는 성립 X) 따라서 용량이 작은 가방부터 최선으로 채워나가면 최선의 결과를 얻을 수 있음이 보장된다.
          가방에 담을 때는 보석 중 가장 가격이 높은 것을 담는다.
 */

/*
struct Bosuk: Comparable {
    let weight: Int
    let value: Int
    
    static func < (lhs: Bosuk, rhs: Bosuk) -> Bool {
        return lhs.weight < rhs.weight
    }
}

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], K = line[1]
var bosuks: [Bosuk] = []
var bagWeights: [Int] = Array(repeating: 0, count: K)
var pq: PriorityQueue<Int> = .init(comparer: >)
var idx: Int = 0
var result: Int = 0

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    bosuks.append(Bosuk(weight: line[0], value: line[1]))
}

for i in 0..<K {
    bagWeights[i] = Int(readLine()!)!
}

bosuks.sort()
bagWeights.sort()

for bagWeight in bagWeights {
    while idx < N && bagWeight >= bosuks[idx].weight {
        pq.enqueue(bosuks[idx].value)
        idx += 1
    }
    
    if !pq.isEmpty {
        result += pq.dequeue()!
    }
}

print(result)
*/
