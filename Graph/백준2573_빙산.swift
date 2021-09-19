//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/20.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var graph: [[Int]] = Array(repeating: [], count: N)
var adjIce: [(Int, Int, Int)] = []
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
var result: Int = 0

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[i] = line
}

while true {
    visited = Array(repeating: Array(repeating: false, count: M), count: N)
    var divCnt: Int = 0
    adjIce = []
    
    for i in 0..<N {
        for j in 0..<M {
            // DFS로 빙산이 두 덩어리 이상으로 분리되어있는지 확인
            if !visited[i][j] && graph[i][j] > 0 {
                dfs(i, j)
                divCnt += 1
            }
        }
    }
    
    if divCnt >= 2 {
        print(result)
        break
    } else {
        var isAllMelted: Bool = true
        
        for i in 0..<N {
            for j in 0..<M {
                if graph[i][j] > 0 {
                    isAllMelted = false     // 아직 녹아있지 않은 빙산이 존재
                    var cnt: Int = 0
                    
                    for currDir in dir {
                        // 상하좌우 4방향에 바다가 존재하는지 확인화고 카운팅
                        let nextY = i + currDir.0
                        let nextX = j + currDir.1
                        
                        if isValid(nextY, nextX) && graph[nextY][nextX] == 0 {
                            cnt += 1
                        }
                    }
                    adjIce.append((i, j, cnt))  // 좌표와 카운트를 저장
                }
            }
        }
        
        if isAllMelted {
            print("0")
            break
        } else {
            for curr in adjIce {
                // 저장한 좌표와 카운트로 빙산의 높이를 줄인다.
                graph[curr.0][curr.1] = max(0, graph[curr.0][curr.1] - curr.2)
            }
            result += 1
        }
    }
}

func dfs(_ y: Int, _ x: Int) {
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1
        
        if isValid(nextY, nextX) && !visited[nextY][nextX] && graph[nextY][nextX] > 0 {
            visited[nextY][nextX] = true
            dfs(nextY, nextX)
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}
*/
