//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/05/19.

// 그리디와 모듈러 연산이 핵심이라는 것을 파악하면 쉽게 풀 수 있는 문제
// Swift는 정수의 범위가 2^64 까지만 지원되므로, 모듈러 연산과 pow 연산시에 이 점을 주의해야함

/*
func findMaximumMoneyEarned(cost: [Int], x: Int) -> Int {
    var startIdx = 0
    var ret = 0
    var remain = 0
    let mod = pow(10, 9) + 7

    for i in stride(from: cost.count - 1, through: 0, by: -1) {
        if cost[i] <= x {
            startIdx = i
            ret = pow(2, i, mod: mod)
            remain = x - cost[i]
            break
        }
    }
    
    for i in stride(from: startIdx - 1, through: 0, by: -1) {
        if cost[i] <= remain {
            ret = (ret + pow(2, i, mod: mod)) % mod
            remain -= cost[i]
        }
    }
    return ret
}

print(findMaximumMoneyEarned(cost: [10, 20, 14, 40, 50], x: 70))
print(findMaximumMoneyEarned(cost: [3, 4, 1], x: 8))
*/
