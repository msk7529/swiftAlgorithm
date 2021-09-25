//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/05.
//
//import Foundation
/*
var N: Int = 0
var M: Int = 0
var currSize: Int = 2
var currPos: (Int, Int) = (0, 0)
var needToLevelUp: [Int] = []   // neeToLevelUp[i]: 크기가 i인 아기상어가 현재 먹은 물고기의 개수
let dir: [(Int, Int)] = [(1,0),(-1,0),(0,1),(0,-1)]
var graph: [[Int]] = []
var visited: [[Bool]] = []
var result: Int = 0

func input() {
    N = Int(readLine()!)!
    graph = Array(repeating: [], count: N)
    needToLevelUp = Array(repeating: 0, count: 33)
    
    for i in 0..<N {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[i].append(contentsOf: line)
    }
    
    for i in 0..<N {
        for j in 0..<N {
            if graph[i][j] == 9 {
                currPos = (i, j)
            } else if graph[i][j] != 0 {
                M += 1
            }
        }
    }
    
    while M != 0 {
        visited = Array(repeating: Array(repeating: false, count: N), count: N)

        if let targetFishPos = bfs(currPos.0, currPos.1) {
            // 타겟과 아기상어의 원래 위치를 0으로 변경
            graph[targetFishPos.0][targetFishPos.1] = 0
            graph[currPos.0][currPos.1] = 0
            
            currPos = (targetFishPos.0, targetFishPos.1)    // 아기상의 위치를 타겟위치로 변경
            result += targetFishPos.2   // 거리를 더해주고
            M -= 1  // 남은 물고기 갯수 감소 시켜주고
            needToLevelUp[currSize] += 1    // 크기 i인 아기상어가 먹은 물고기갯수 증가시켜주고
            if needToLevelUp[currSize] == currSize {
                currSize += 1
            }
        } else {
            break
        }
    }
    print(result)
}

func bfs(_ y: Int, _ x: Int) -> (Int, Int, Int)? {
    // 현재 위치에서 가장 가까운 물고기를 찾고, 해당 물고기의 위치와 사이거리를 리턴한다.
    var queue: Queue<(Int, Int)> = .init()
    queue.enqueue((y, x))
    visited[y][x] = true
    var currDist: Int = 0   // 타겟물고기와 아기상어의 거리
    
    while !queue.isEmpty {
        var foundFishPos: [(Int, Int)] = []
        currDist += 1
        for _ in 0..<queue.count {
            let curr = queue.dequeue()!
            
            for currDir in dir {
                let nextY = curr.0 + currDir.0
                let nextX = curr.1 + currDir.1
                
                if isValid(nextY, nextX) && !visited[nextY][nextX] {
                    if graph[nextY][nextX] != 0 && graph[nextY][nextX] < currSize {
                        // 물고기를 먹을수 있으므로, found배열에 넣고 continue
                        visited[nextY][nextX] = true
                        foundFishPos.append((nextY, nextX))
                        continue
                    }
                    
                    if graph[nextY][nextX] <= currSize {
                        // 지나갈 수 있으므로 queue에 넣고 계속 진행
                        visited[nextY][nextX] = true
                        queue.enqueue((nextY, nextX))
                    }
                }
            }
        }
        
        // 한바퀴 queue를 돌았으면 현재 탐색한 거리에서 찾은 물고기가 있는지 확인. 있으면 정렬하여 첫번째꺼 리턴
        foundFishPos.sort {
            if $0.0 != $1.0 {
                return $0.0 < $1.0
            }
            return $0.1 < $1.1
        }
        
        if !foundFishPos.isEmpty {
            return (foundFishPos.first!.0, foundFishPos.first!.1, currDist)
        }
    }
    return nil
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= N {
        return false
    }
    return true
}

input()
*/
