//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/26.
//
/*
let N = Int(readLine()!)!
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var graph: [[Int]] = Array(repeating: [], count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
var numOfIsland: Int = 0    // 섬의 개수
var posDic: [Int: [(Int, Int)]] = [:]   // posDic[i]: i번 섬에 포함되는 좌표를 저장
var result: Int = .max

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[i] = line
}

for i in 0..<N {
    for j in 0..<N {
        if !visited[i][j] && graph[i][j] > 0 {
            numOfIsland += 1
            posDic[numOfIsland] = [(i, j)]
            visited[i][j] = true
            dfs(i, j)
        }
    }
}

// 서로 다른 섬의 모든 좌표들간의 거리를 구한다. 원래는 BFS로 최단거리를 구하는 것이 정석
for i in 1..<numOfIsland {
    for iPos in posDic[i]! {
        for j in stride(from: i + 1, through: numOfIsland, by: 1) {
            for jPos in posDic[j]! {
                result = min(result, distance(iPos, jPos))
            }
        }
    }
}

print(result)

func dfs(_ y: Int, _ x: Int) {
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] > 0 {
            visited[nextY][nextX] = true
            graph[nextY][nextX] = numOfIsland   // 해당 좌표를 i번 섬이라고 표시
            posDic[numOfIsland]!.append((nextY, nextX))     // 좌표 append
            dfs(nextY, nextX)
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= N {
        return false
    }
    return true
}

func distance(_ a: (Int, Int), _ b: (Int, Int)) -> Int {
    // a와 b의 거리를 구한다.
    if a.0 == b.0 { return abs(a.1 - b.1) - 1 }
    return abs(a.0 - b.0) - 1 + abs(a.1 - b.1)
}
*/
