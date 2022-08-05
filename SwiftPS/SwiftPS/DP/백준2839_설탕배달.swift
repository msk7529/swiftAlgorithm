//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/21.
//

/* 그리디 풀이
 
let N: Int = Int(readLine()!)!
var result: Int = Int.max

for i in stride(from: N / 5, through: 0, by: -1) {
    let remain: Int = N - 5 * i
    if remain % 3 == 0 {
        result = remain / 3 + i
        break
    }
}
print(result == Int.max ? "-1" : result)

*/

/*
let N: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: -1, count: N + 1)
let result: Int = calculate(N)
print(result >= 98765432 ? -1 : result)

func calculate(_ N: Int) -> Int {
    if N == 0 {
        // 정확한 양인 경우
        return 0
    }
    
    if N < 0 {
        // 배달할 수 없는 경우
        return 98765432
    }
    
    if dp[N] != -1 {
        return dp[N]
    }
    
    dp[N] = 1 + min(calculate(N - 3), calculate(N - 5))
    
    return dp[N]
}
*/
