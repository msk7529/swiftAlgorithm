//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/31.
//
/*
var dic: [String: [Int]] = [:]
var lineForDFS: [String] = []
var sortedDic: [String: [Int]] = [:]
var result: [Int] = []

func solution(_ info: [String], _ query: [String]) -> [Int] {
    for currInfo in info {
        // 주어진 info에 대해 "-"를 포함한 모든 경우의 수를 만들어 딕셔너리를 구성한다. 즉 하나의 info에 대해 16가지 정보를 구성
        let line = currInfo.split(separator: " ").map { String($0) }
        lineForDFS = [line[0], line[1], line[2], line[3]]
        dfs(index: 0, curr: "", score: Int(line[4])!)
    }
    
    dic.forEach {
        // value에 대한 이진탐색을 위해 [Int] 타입인 value를 정렬해준다.
        let sortedValue = $0.value.sorted()
        sortedDic[$0.key] = sortedValue
    }
    
    for currQuery in query {
        var line = currQuery.split(separator: " ").map { String($0) }.filter { $0 != "and" }    // 쿼리문을 dic의 key에 넣을 수 있도록 재구성
        let minScore = Int(line.removeLast())!
        
        if let scores = sortedDic[line.joined()] {
            // 키값이 사전에 존재하면 이진탐색하여 갯수를 구한다.
            let start = scores.lowerBound(value: minScore)
            result.append(scores.count - start)
        } else {
            result.append(0)
        }
    }
    
    return result
}

func dfs(index: Int, curr: String, score: Int) {
    if index == 4 {
        if let value = dic[curr] {
            dic[curr] = value + [score]
        } else {
            dic[curr] = [score]
        }
        return
    }
    
    dfs(index: index + 1, curr: curr + lineForDFS[index], score: score)
    dfs(index: index + 1, curr: curr + "-", score: score)
}

//print(solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]))
*/
