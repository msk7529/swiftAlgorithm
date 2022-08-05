//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/23.

/*
// Maximum Knowledge
// https://www.hackerrank.com/x/library/hackerrank/all/questions/1201621/try
// 그리디, 투포인터. 유형을 접한적이 없으면 풀이방법을 찾기 어려움

func getMaxKnowledge(d: Int, s: [Int], e: [Int], a: [Int], k: Int) -> Int {
    var arr: [(Int, Int)] = []
    var knowledges: [Int] = []
    var currentKnowledges: [Int] = []
    var result: Int = 0
    let N = s.count
    
    for i in 0..<N {
        arr.append((s[i], a[i]))
        arr.append((e[i] + 1, -a[i]))
    }
    knowledges = arr.sorted { $0.0 < $1.0 }.map { $0.1 }    // 날짜를 기준으로 오름차순 정렬 후, 증감된 knowledge값만 뽑아냄
    
    for knowledge in knowledges {
        if knowledge > 0 {
            currentKnowledges.append(knowledge)
            currentKnowledges.sort { $0 > $1 }
            result = max(result, currentKnowledges[0..<min(k, currentKnowledges.count)].reduce(0, +))
        } else {
            if let index = currentKnowledges.firstIndex(where: { $0 == -knowledge }) {
                currentKnowledges.remove(at: index)
            }
        }
    }
    return result
}

print(getMaxKnowledge(d: 10, s: [2, 6, 4, 3], e: [8, 9, 7, 5], a: [900, 1600, 2000, 400], k: 3))
*/
