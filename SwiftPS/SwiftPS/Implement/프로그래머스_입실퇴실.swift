//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/14.
//
/*
func solution(_ enter: [Int], _ leave: [Int]) -> [Int] {
    var graph: [[Bool]] = Array(repeating: Array(repeating: false, count: enter.count + 1), count: enter.count + 1)
    var isLeaved: [Bool] = Array(repeating: false, count: enter.count + 1)
    var result: [Int] = []
    
    for curr in leave {
        if let index = enter.firstIndex(where: { $0 == curr }) {
            for i in stride(from: 0, to: index, by: 1) {
                if !isLeaved[enter[i]] {
                    graph[curr][enter[i]] = true
                    graph[enter[i]][curr] = true
                }
            }
            isLeaved[curr] = true
            
            for i in stride(from: 0, to: index, by: 1) {
                if isLeaved[enter[i]] { continue }
                for j in stride(from: i + 1, to: index, by: 1) {
                    if !isLeaved[enter[j]] {
                        graph[enter[i]][enter[j]] = true
                        graph[enter[j]][enter[i]] = true
                    }
                }
            }
        }
    }
    
    for i in 1...enter.count {
        var count: Int = 0
        for j in 1...enter.count {
            if graph[i][j] {
                count += 1
            }
        }
        result.append(count)
    }
    return result
}

print(solution([1,3,2], [1,2,3]))
*/
