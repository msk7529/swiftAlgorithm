//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/06.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 101), count: 101)

if excuteDP(box1: N, box2: M) == 0 {
    print("B")
} else {
    print("A")
}

func excuteDP(box1: Int, box2: Int) -> Int {
    if box1 == 1 && box2 == 1 {
        // 이기는 경우
        return 0
    }
    
    if dp[box1][box2] != -1 {
        return dp[box1][box2]
    }
    
    var win: Int = 1
    for i in stride(from: 1, through: box1 - 1, by: 1) {
        if box1 - i >= 1 {
            win = min(win, excuteDP(box1: i, box2: box1 - i))
        }
    }
    for i in stride(from: 1, through: box2 - 1, by: 1) {
        if box2 - i >= 1 {
            win = min(win, excuteDP(box1: i, box2: box2 - i))
        }
    }
    
    if win == 0 {
        // 이번턴의 모든 경우의 수에서 box1, box2를 모두 1을 만들 수 있는 상황이 한 번 이라도 존재하면, 상대는 진 것이다.
        // 이런 문제유형에서.. dp[box1][box2] = win이 아닌, win과 반대되는 값(1)을 넣어주어야 값이 정상적으로 나오는데.. 원인이 뭘까 ... win으로 넣어주고 출력값을 반대로 하면 되야 하는거 아닌가..
        dp[box1][box2] = 1
    } else {
        dp[box1][box2] = 0
    }
    return dp[box1][box2]
}
*/
