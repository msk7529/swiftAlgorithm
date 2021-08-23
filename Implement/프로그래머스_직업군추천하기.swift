//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/23.
//
/*
struct Job {
    var lanScoreDic: [String: Int] = [:]
}

func solution(_ table: [String], _ languages: [String], _ preference: [Int]) -> String {
    let jobIndex: [String: Int] = ["SI": 0, "CONTENTS": 1, "HARDWARE": 2, "PORTAL": 3, "GAME": 4]   // 좌표압축을 위한 딕셔너리
    var jobs: [Job] = Array(repeating: Job(), count: 5)
    var langPreference: [String: Int] = [:]     // 언어별 선호도
    var resultJobIndex: [Int] = []
    var maxScore: Int = 0
    
    for line in table {
        let curr = line.split(separator: " ").map { String($0) }
        let jobToIndex = jobIndex[curr[0]]!     // 좌표압축
        var score = 5
        
        for i in 1...5 {
            jobs[jobToIndex].lanScoreDic[curr[i]] = score   // 직업군 > 언어별 점수를 저장한다.
            score -= 1
        }
    }
    
    for i in 0..<languages.count {
        langPreference[languages[i]] = preference[i]
    }
    
    for index in 0..<5 {
        var total = 0
        
        for curr in jobs[index].lanScoreDic {
            total += curr.value * (langPreference[curr.key] ?? 0)
        }
        
        if total > maxScore {
            maxScore = total
            resultJobIndex = [index]
        } else if total == maxScore {
            resultJobIndex.append(index)
        }
    }
    
    var result: [String] = []
    for (key, value) in jobIndex {
        if resultJobIndex.contains(value) {
            result.append(key)
        }
    }
    result.sort()
    
    return result.first!
}

//print(solution(["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"], ["PYTHON", "C++", "SQL"], [7, 5, 5]))
//print(solution(["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"], ["JAVA", "JAVASCRIPT"], [7, 5]))
*/
