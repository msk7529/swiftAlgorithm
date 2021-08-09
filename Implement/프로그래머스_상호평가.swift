//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/10.
//
/*
enum Grade: String {
    case A, B, C, D, F
    
    init(score: Double) {
        if score >= 90 {
            self = .A
        } else if score >= 80 && score < 90 {
            self = .B
        } else if score >= 70 && score < 80 {
            self = .C
        } else if score >= 50 && score < 70 {
            self = .D
        } else {
            self = .F
        }
    }
}

var N: Int = 0

func maxScore(_ scores: [[Int]], idx: Int) -> Int? {
    var max = -1
    var indexArr: [Int] = []
    
    for i in 0..<N {
        if scores[i][idx] == max {
            indexArr.append(i)
        } else if scores[i][idx] > max {
            max = scores[i][idx]
            indexArr = [i]
        }
    }
    
    if indexArr.count == 1 && indexArr.first! == idx {
        return max
    }
    return nil
}

func minScore(_ scores: [[Int]], idx: Int) -> Int? {
    var min = Int.max
    var indexArr: [Int] = []
    
    for i in 0..<N {
        if scores[i][idx] == min {
            indexArr.append(i)
        } else if scores[i][idx] < min {
            min = scores[i][idx]
            indexArr = [i]
        }
    }
    
    if indexArr.count == 1 && indexArr.first! == idx {
        return min
    }
    return nil
}

func solution(_ scores: [[Int]]) -> String {
    var result: String = ""
    var currSum: Int = 0
    var currAver: Double = 0
    N = scores.count

    for i in 0..<N {
        currSum = 0
        for j in 0..<N {
            currSum += scores[j][i]
        }
        
        if let maxScore = maxScore(scores, idx: i) {
            currSum -= maxScore
            currAver = Double(currSum) / Double(N - 1)
        } else if let minScore = minScore(scores, idx: i) {
            currSum -= minScore
            currAver = Double(currSum) / Double(N - 1)
        } else {
            currAver = Double(currSum) / Double(N)
        }
        result += Grade(score: currAver).rawValue
    }
    
    return result
}

//print(solution([[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]))
//print(solution([[50,90],[50,87]]))
//print(solution([[70,49,90],[68,50,38],[73,31,100]]))
*/
