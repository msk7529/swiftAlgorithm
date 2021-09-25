//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/26.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var graph: [[Int]] = Array(repeating: [], count: N)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
var numOfCheese: Int = 0
var numOfCheeseBeforeOneHour: Int = 0
var result: Int = 0

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[i] = line
}

for i in 0..<N {
    for j in 0..<M {
        if graph[i][j] == 1 {
            numOfCheese += 1
        }
    }
}

visited[0][0] = true
markToAir(0, 0)     // 공기와 접촉되어 있는 구멍은 -1로 마킹한다. 가장자리는 항상 공기와 접촉하므로 (0, 0)에서 dfs를 수행

while numOfCheese > 0 {
    var meltPos: [(Int, Int)] = []
    numOfCheeseBeforeOneHour = numOfCheese

    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 1 && needToMelt(i, j) {
                numOfCheese -= 1
                meltPos.append((i, j))
            }
        }
    }
    
    for pos in meltPos {
        // 이번턴에 녹은 치즈의 좌표들은 공기로 마킹하고, 이로 인해 구멍에 공기가 들어가게 되는지 dfs 확인하고 마킹한다.
        graph[pos.0][pos.1] = -1
        visited[pos.0][pos.1] = true
        markToAir(pos.0, pos.1)
    }
    result += 1
}

print(result)
print(numOfCheeseBeforeOneHour)

func markToAir(_ y: Int, _ x: Int) {
    for currDir in dir {
        let nextY = y + currDir.0, nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] == 0 {
            visited[nextY][nextX] = true
            graph[nextY][nextX] = -1    // 공기와 접촉되어 있는 것으로 마킹
            markToAir(nextY, nextX)
        }
    }
}

func needToMelt(_ y: Int, _ x: Int) -> Bool {
    // 4방향중 하나라도 공기(-1)와 닿아있으면 true
    for currDir in dir {
        let nextY = y + currDir.0, nextX = x + currDir.1
        
        if isValid(nextY, nextX) && graph[nextY][nextX] == -1 {
            return true
        }
    }
    return false
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}
*/
