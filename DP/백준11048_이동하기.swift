//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/07.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let dir: [(Int, Int)] = [(1,0), (0,1), (1,1)]
let N: Int = line[0]
let M: Int = line[1]
var arr: [[Int]] = Array(repeating: [], count: N + 1)
var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: M + 1), count: N + 1)

for i in 1...N {
    let row = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr[i].append(0)
    arr[i].append(contentsOf: row)
}

print(excuteDP(currY: 1, currX: 1))

func excuteDP(currY: Int, currX: Int) -> Int {
    if currY == N && currX == M {
        return arr[currY][currX]
    } else if currY > N {
        return -Int.max
    } else if currX > M {
        return -Int.max
    }
    
    if dp[currY][currX] != -1 {
        return dp[currY][currX]
    }
    
    dp[currY][currX] = 0
    
    for currDir in dir {
        let nextY = currY + currDir.0
        let nextX = currX + currDir.1
        
        dp[currY][currX] = max(dp[currY][currX], arr[currY][currX] + excuteDP(currY: nextY, currX: nextX))
    }
    return dp[currY][currX]
}
*/
