//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/05.
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let b1 = input[0], b2 = input[1], b3 = input[2]
var k1 = 0, k2 = 0
var dp: [[Int]] = []

for _ in 0..<5 {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    k1 = line[0]
    k2 = line[1]
    dp = Array(repeating: Array(repeating: -1, count: k2 + 1), count: k1 + 1)
    
    let ret = excuteDP(curr1: k1, curr2: k2)
    print(ret == 0 ? "B" : "A")
}

func excuteDP(curr1: Int, curr2: Int) -> Int {
    if curr1 == 0 && curr2 == 0 {
        // 여기서 리턴되는 경우를 호출한 사람이 이기는 사람이다.
        return 0
    }

    if dp[curr1][curr2] != -1 {
        return dp[curr1][curr2]
    }

    var win: Int = 1
    
    for curr in [b1, b2, b3] {
        if curr1 >= curr {
            win = min(win, excuteDP(curr1: curr1 - curr, curr2: curr2))
        }
        if curr2 >= curr {
            win = min(win, excuteDP(curr1: curr1, curr2: curr2 - curr))
        }
    }

    if win == 0 {
        // 이번턴에 한 번이라도 0을 리턴받을 수 있는 조건이 존재하면 내가 이긴 것이다.
        dp[curr1][curr2] = 1
    } else {
        // 그렇지 않다면 내가 진 것 이다.
        dp[curr1][curr2] = 0
    }

    return dp[curr1][curr2]
}
*/
