//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/05/30.

/*
// 이런 유형 다뤄본적이 없으면 못 풀듯
func getMostVisited(n: Int, sprints: [Int]) -> Int {
    var diff: [Int] = Array(repeating: 0, count: n + 2)
    var result: Int = 0
    var maxValue: Int = -1
    
    for i in stride(from: 0, through: sprints.count - 2, by: 1) {
        let start = min(sprints[i], sprints[i + 1])
        let end = max(sprints[i], sprints[i + 1])
        diff[start] += 1
        diff[end + 1] -= 1
    }
    
    for i in 1...n {
        diff[i] += diff[i - 1]
    }
    
    for i in 1...n {
        if diff[i] > maxValue {
            result = i
            maxValue = diff[i]
        }
    }
    
    return result
}

print(getMostVisited(n: 5, sprints: [2, 4, 1, 3]))
print(getMostVisited(n: 10, sprints: [1, 5, 10, 3]))
print(getMostVisited(n: 5, sprints: [1, 5]))
print(getMostVisited(n: 9, sprints: [9, 7, 3, 1]))
*/
