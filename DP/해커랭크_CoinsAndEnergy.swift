//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/27.
/*
// Coins and Energy
// https://www.hackerrank.com/x/library/hackerrank/all/questions/607483/try
// 전형적인 DP 문제. 2차원 DP배열을 어떻게 정의할지 고민이 필요. n이 최대 1000이므로 1000 * 1000으로 생각할 수 있는데, 이때는 남은 에너지가 1000이상인 경우 index범위를 벗어나게 되므로 배열에 접근하지 않고 코인값을 더해주는 등의 처리가 필요함. 남은 에너지가 0인 경우에 코인값만 더해주고 그대로 종료해야 하는 예외처리로 시간이 꽤 소요되었음

func getRich(initialEnergy: Int, energy: [Int], coins: [Int]) -> Int {
    var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: energy.count), count: energy.count)
    
    func solveDP(index: Int, remainEnergy: Int) -> Int {
        if index >= energy.count || remainEnergy < 0 {
            return 0
        }
        if remainEnergy >= energy.count - index - 1 {
            // 충분한 에너지가 있는 경우
            return coins[index] + solveDP(index: index + 1, remainEnergy: remainEnergy - 1)
        }
        
        if dp[index][remainEnergy] != -1 {
            return dp[index][remainEnergy]
        }
        
        dp[index][remainEnergy] = solveDP(index: index + 1, remainEnergy: remainEnergy + energy[index] - 1)     // 에너지를 먹고 다음으로 넘어감

        if remainEnergy == 0 {
            dp[index][remainEnergy] = max(dp[index][remainEnergy], coins[index])    // 코인을 먹고 종료
        } else {
            dp[index][remainEnergy] = max(dp[index][remainEnergy], coins[index] + solveDP(index: index + 1, remainEnergy: remainEnergy - 1))    // 코인을 먹고 다음으로 넘어감
        }
        return dp[index][remainEnergy]
    }
    
    return solveDP(index: 0, remainEnergy: initialEnergy)
}

print(getRich(initialEnergy: 1, energy: [1, 5, 3, 3, 1], coins: [3, 23, 9, 2, 2]))
print(getRich(initialEnergy: 0, energy: [2, 1, 1], coins: [11, 5, 7]))
print(getRich(initialEnergy: 19999, energy: [12, 2, 2], coins: [5, 5, 5]))
print(getRich(initialEnergy: 0, energy: [0, 0], coins: [500, 1]))
*/
