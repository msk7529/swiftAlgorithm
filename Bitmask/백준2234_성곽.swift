//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/24.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n: Int = input[1]
let m: Int = input[0]
var arr: [[Int]] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
var roomCount: Int = 0
var roomWidthMax: Int = 0
var roomWidthMax2: Int = 0

for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(line)
}

func dfs(_ y: Int, _ x: Int) -> Int {
    visited[y][x] = true
    
    var ret = 1
    
    if canGoUp(y, x) && !visited[y - 1][x] {
        ret += dfs(y - 1, x)
    }
    if canGoDown(y, x) && !visited[y + 1][x] {
        ret += dfs(y + 1, x)
    }
    if canGoLeft(y, x) && !visited[y][x - 1] {
        ret += dfs(y, x - 1)
    }
    if canGoRight(y, x) && !visited[y][x + 1] {
        ret += dfs(y, x + 1)
    }
    
    return ret
}

func canGoRight(_ y: Int, _ x: Int) -> Bool {
    if x == m - 1 { return false }
    
    if arr[y][x] & (1 << 2) > 0 {
        return false
    }
    return true
}

func canGoLeft(_ y: Int, _ x: Int) -> Bool {
    if x == 0 { return false }
    
    if arr[y][x] & (1 << 0) > 0 {
        return false
    }
    return true
}

func canGoUp(_ y: Int, _ x: Int) -> Bool {
    if y == 0 { return false }
    
    if arr[y][x] & (1 << 1) > 0 {
        return false
    }
    return true
}

func canGoDown(_ y: Int, _ x: Int) -> Bool {
    if y == n - 1 { return false }
    
    if arr[y][x] & (1 << 3) > 0 {
        return false
    }
    return true
}

for i in 0..<n {
    for j in 0..<m {
        if !visited[i][j] {
            roomCount += 1
            let result = dfs(i, j)
            roomWidthMax = max(roomWidthMax, result)
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        // 4방향의 벽을 전부 한개씩 없애보면서 dfs를 매번 수행한다. 이거 좀 비효율적인듯..
        var result = 0
        let tmp = arr[i][j]
        
        if arr[i][j] & (1 << 0) > 0 {
            arr[i][j] &= ~(1 << 0)
            visited = Array(repeating: Array(repeating: false, count: m), count: n)
            result = dfs(i, j)
            roomWidthMax2 = max(roomWidthMax2, result)
            arr[i][j] = tmp
        }

        if arr[i][j] & (1 << 1) > 0 {
            arr[i][j] &= ~(1 << 1)
            visited = Array(repeating: Array(repeating: false, count: m), count: n)
            result = dfs(i, j)
            roomWidthMax2 = max(roomWidthMax2, result)
            arr[i][j] = tmp
        }
        
        if arr[i][j] & (1 << 2) > 0 {
            arr[i][j] &= ~(1 << 2)
            visited = Array(repeating: Array(repeating: false, count: m), count: n)
            result = dfs(i, j)
            roomWidthMax2 = max(roomWidthMax2, result)
            arr[i][j] = tmp
        }
        
        if arr[i][j] & (1 << 3) > 0 {
            arr[i][j] &= ~(1 << 3)
            visited = Array(repeating: Array(repeating: false, count: m), count: n)
            result = dfs(i, j)
            roomWidthMax2 = max(roomWidthMax2, result)
            arr[i][j] = tmp
        }
    }
}

print(roomCount)
print(roomWidthMax)
print(roomWidthMax2)
*/
