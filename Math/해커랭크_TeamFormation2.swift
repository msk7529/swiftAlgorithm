//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/05/26.

// 조합을 계산할 수 있으면 쉽게 풀 수 있는 문제. 난이도 1

/*
func countTeams(skills: [Int], minPlayers: Int, minLevel: Int, maxLevel: Int) -> Int {
    var cnt = 0
    var result = 0
    
    for skill in skills {
        if skill >= minLevel && skill <= maxLevel {
            cnt += 1
        }
    }

    for r in stride(from: minPlayers, through: cnt, by: 1) {
        result += combinations(cnt, r)
    }
    return result
}

print(countTeams(skills: [4, 8, 5, 6], minPlayers: 1, minLevel: 5, maxLevel: 7))
*/
