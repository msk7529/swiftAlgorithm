//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/06.
//
/*
struct Person {
    let index: Int
    let weight: Int
    var winRate: Double
    var winCountBiggerThanMe: Int
}

func solution(_ weights: [Int], _ head2head: [String]) -> [Int] {
    var persons: [Person] = []
    
    for i in 0..<weights.count {
        persons.append(Person(index: i + 1, weight: weights[i], winRate: 0, winCountBiggerThanMe: 0))
    }
    
    for (i, history) in head2head.enumerated() {
        var winCount: Int = 0
        let fightCount: Int = history.filter { $0 != "N" }.count
        for (j, char) in history.enumerated() {
            if char == "W" {
                winCount += 1
                if weights[i] < weights[j] {
                    persons[i].winCountBiggerThanMe += 1
                }
            }
        }
        persons[i].winRate = fightCount != 0 ? Double(winCount) / Double(fightCount) : 0
    }
    
    return persons.sorted {
        if $0.winRate == $1.winRate {
            if $0.winCountBiggerThanMe == $1.winCountBiggerThanMe {
                if $0.weight == $1.weight {
                    return $0.index < $1.index
                }
                return $0.weight > $1.weight
            }
            return $0.winCountBiggerThanMe > $1.winCountBiggerThanMe
        }
        return $0.winRate > $1.winRate
    }.map { $0.index }
}

print(solution([50,82,75,120], ["NLWL","WNLL","LWNW","WWLN"]))
print(solution([145,92,86], ["NLW","WNL","LWN"]))
print(solution([60,70,60], ["NNN","NNN","NNN"]))
*/
