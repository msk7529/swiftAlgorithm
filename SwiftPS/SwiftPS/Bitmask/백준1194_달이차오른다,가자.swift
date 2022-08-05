//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/23.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = line[0]
let M: Int = line[1]
let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
var graph: [[Character]] = []
var visited: [[[Bool]]] = Array(repeating: Array(repeating: Array(repeating: false, count: 1 << 6), count: M), count: N)
var start: (Int, Int) = (0, 0)
var end: (Int, Int) = (0, 0)
var queue: Queue<(y: Int, x: Int, keyState: Int)> = .init()

for _ in 0..<N {
    let line = readLine()!
    graph.append(line.map { $0 })
}

for i in 0..<N {
    for j in 0..<M {
        if graph[i][j] == "0" {
            start = (i, j)
            queue.enqueue((i, j, 0))
            visited[i][j][0] = true
        } else if graph[i][j] == "1" {
            end = (i, j)
        }
    }
}

func bfs() -> Int {
    var moveCount: Int = 1

    while !queue.isEmpty {
        let count: Int = queue.count
        
        for _ in 0..<count {
            let curr = queue.dequeue()!
            // visited[curr.y][curr.x][curr.keyState] = true
            // 아래 switch문의 각 분기에서 방문처리를 하지않고 여기서 방문처리를 하면 메모리초과가 발생한다.
            
            for currDir in dir {
                let nextY = curr.y + currDir.0
                let nextX = curr.x + currDir.1
                
                if isValid(nextY, nextX) && !visited[nextY][nextX][curr.keyState] {
                    switch graph[nextY][nextX] {
                    case "#":
                        continue
                    case ".", "0":
                        queue.enqueue((y: nextY, x: nextX, keyState: curr.keyState))
                        visited[nextY][nextX][curr.keyState] = true
                    case "1":
                        return moveCount
                    case let char where char.isLowercase:
                        // 보유하고 있는 키상태를 업데이트
                        let bit = graph[nextY][nextX].asciiValue! - 97
                        let nextKeyState = curr.keyState | (1 << bit)
                        queue.enqueue((y: nextY, x: nextX, keyState: nextKeyState))
                        visited[nextY][nextX][nextKeyState] = true
                    case let char where char.isUppercase:
                        // 보유하고 있는 키상태로, 도달할 수 있는지 판별
                        let bit = graph[nextY][nextX].asciiValue! - 65
                        if curr.keyState & (1 << bit) > 0 {
                            queue.enqueue((y: nextY, x: nextX, keyState: curr.keyState))
                            visited[nextY][nextX][curr.keyState] = true
                        }
                    default:
                        // 발생할 수 없음
                        continue
                    }
                }
            }
        }
        
        moveCount += 1
    }
    
    return -1
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}

print(bfs())
*/
