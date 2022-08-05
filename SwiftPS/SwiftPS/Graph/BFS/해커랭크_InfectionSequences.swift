//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/03/03.
/*
// Infection Sequences
// https://www.hackerrank.com/x/library/hackerrank/all/questions/1230194/try
// 타임아웃에 걸리지 않기위해서는 최적화가 필요한 문제. Set과 배열을 적절하게 사용해 infect처리를 위한 loop를 최대한 적게 수행하도록 하는것이 포인트(BFS로 풀면 더 깔끔할 듯)
// 팩토리얼 구현함수와 결과값을 도출할 때 mod를 고려해야함

func getInfectionSequencesCount(n: Int, infectedHouses: [Int]) -> Int {
    guard infectedHouses.count != n else { return 0 }
    
    let mod = 1000000007
    var result: Int = 1
    var infectedHouseSet: Set<Int> = .init()    // 다음번에 탐색할 집의 집합
    var checked: [Bool] = Array(repeating: false, count: n + 1)     // 집의 감염 여부
    var infectedCount: Int = infectedHouses.count   // 감염된 집의 총 개수
    var fac: [Int] = []
    fac = Array(repeating: 0, count: n + 1)
    fac[0] = 1; fac[1] = 1; fac[2] = 2
    
    for i in stride(from: 3, through: n, by: 1) {
        fac[i] = (i * fac[i - 1]) % mod
    }
    
    for house in infectedHouses {
        infectedHouseSet.insert(house)
        checked[house] = true
    }
    
    while true {
        if infectedCount == n { break }
        
        var tmpSet: Set<Int> = .init()
        for house in infectedHouseSet {
            let prev = house - 1, next = house + 1
            if prev >= 1 && !checked[prev] && !tmpSet.contains(prev) {
                tmpSet.insert(prev)
                checked[prev] = true
                infectedCount += 1
            }
            if next <= n && !checked[next] && !tmpSet.contains(next) {
                tmpSet.insert(next)
                checked[next] = true
                infectedCount += 1
            }
        }
        result = (result * fac[tmpSet.count]) % mod
        infectedHouseSet = tmpSet
    }
    
    return result
}

print(getInfectionSequencesCount(n: 6, infectedHouses: [3, 5]))
print(getInfectionSequencesCount(n: 5, infectedHouses: [1, 5]))
print(getInfectionSequencesCount(n: 50000, infectedHouses: [1, 50, 100, 1000, 6000, 25000]))
*/
