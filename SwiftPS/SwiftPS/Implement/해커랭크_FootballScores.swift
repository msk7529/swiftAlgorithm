//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/23.
/*
// Football Scores
// https://www.hackerrank.com/x/library/hackerrank/all/questions/295396/try
// 오름차순 정렬 후 upperbound를 구현해야 하는 문제. 이진탐색을 구현할 줄 알면 어렵지 않게 풀 수 있음

func counts(teamA: [Int], teamB: [Int]) -> [Int] {
    let teamA = teamA.sorted()
    var result: [Int] = []
    for targetNum in teamB {
        let index = teamA.upperBound(value: targetNum)
        result.append(index)
    }
    return result
}

public extension RandomAccessCollection where Element: Comparable {
    func upperBound(value: Element) -> Int {
        if self.last! <= value {
            return self.count
        }
        
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx < endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]
            
            if mid > value {
                endIdx = (midIdx as! Int)
            } else {
                startIdx = (midIdx as! Int) + 1
            }
        }
        return endIdx
    }
}

print(counts(teamA: [2, 10, 5, 4, 8], teamB: [3, 1, 7, 8]))
*/
