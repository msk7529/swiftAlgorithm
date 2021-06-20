//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/06/21.
//
/*
enum PipeDir {
    case horizontal
    case vertical
    case diagonal
    
    init(startY: Int, startX: Int, endY: Int, endX: Int) {
        if startY == endY && endX == startX + 1 {
            self = .horizontal
        } else if startX == endX && endY == startY + 1 {
            self = .vertical
        } else {
            self = .diagonal
        }
    }
}

let N: Int = Int(readLine()!)!
var arr: [[Int]] = []
var dp: [[[[Int]]]] = Array(repeating: Array(repeating: Array(repeating: Array(repeating: -1, count: N), count: N), count: N), count: N)

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

print(excuteDP(startY: 0, startX: 0, endY: 0, endX: 1))

func excuteDP(startY: Int, startX: Int, endY: Int, endX: Int) -> Int {
    if endY == N - 1 && endX == N - 1 {
        return 1
    }
    
    if dp[startY][startX][endY][endX] != -1 {
        return dp[startY][startX][endY][endX]
    }
    
    dp[startY][startX][endY][endX] = 0
    
    let currPipeDir: PipeDir = .init(startY: startY, startX: startX, endY: endY, endX: endX)
    
    switch currPipeDir {
    case .horizontal:
        if canPlaceHorizontal(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY, endX: endX + 1)
        }
        if canPlaceDiagonal(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY + 1, endX: endX + 1)
        }
    case .vertical:
        if canPlaceVertical(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY + 1, endX: endX)
        }
        if canPlaceDiagonal(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY + 1, endX: endX + 1)
        }
    case .diagonal:
        if canPlaceHorizontal(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY, endX: endX + 1)
        }
        if canPlaceVertical(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY + 1, endX: endX)
        }
        if canPlaceDiagonal(endY, endX) {
            dp[startY][startX][endY][endX] += excuteDP(startY: endY, startX: endX, endY: endY + 1, endX: endX + 1)
        }
    }
    
    return dp[startY][startX][endY][endX]
}

func canPlaceHorizontal(_ y: Int, _ x: Int) -> Bool {
    if x + 1 < N && arr[y][x+1] == 0 {
        return true
    }
    return false
}

func canPlaceVertical(_ y: Int, _ x: Int) -> Bool {
    if y + 1 < N && arr[y+1][x] == 0 {
        return true
    }
    return false
}

func canPlaceDiagonal(_ y: Int, _ x: Int) -> Bool {
    if x + 1 < N && y + 1 < N && arr[y][x+1] == 0 && arr[y+1][x] == 0 && arr[y+1][x+1] == 0 {
        return true
    }
    return false
}
*/
