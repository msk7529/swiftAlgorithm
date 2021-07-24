//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/25.
//
/*
let MAX: Int = 987654321
let N: Int = Int(readLine()!)!
var arr: [[Int]] = []
var dp: [Int] = Array(repeating: -1, count: 1 << N)
// ex) dp[0011]: 0, 1번째 발전소가 켜져있고, 2, 3번째 발전소가 꺼져있을때, 이상태에서의 최소비용
var initState: Int = 0
var result = MAX

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(line)
}

for (index, value) in readLine()!.enumerated() {
    if value == "Y" {
        initState |= (1 << index)
    }
}

let P: Int = Int(readLine()!)!

result = excuteDP(state: initState)
print(result >= MAX ? "-1" : result)

func excuteDP(state: Int) -> Int {
    var count: Int = 0

    for i in 0..<N {
        if state & (1 << i) > 0 {
            count += 1
        }
    }
    
    if count >= P {
        return 0
    }
    
    if dp[state] != -1 {
        return dp[state]
    }
    
    dp[state] = MAX
    
    for i in 0..<N {
        if (state & (1 << i)) == 0 { continue }
        // 현재 상태에서 고장나지 않은 발전소(i)를 찾는다.
        
        for j in 0..<N {
            if (state & (1 << j)) == 0 {
                // 고장난 발전소(j)를 찾는다.
                let nextState = state | (1 << j)
                dp[state] = min(dp[state], arr[i][j] + excuteDP(state: nextState))
            }
        }
    }
    
    return dp[state]
}
*/
