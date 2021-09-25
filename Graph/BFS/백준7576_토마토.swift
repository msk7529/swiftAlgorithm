//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
/*
var N: Int = 0
var M: Int = 0
var graph: [[Int]] = []
let dir: [(Int, Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]
var result: Int = 0
var queue: Queue<(Int, Int)> = .init()

func input() {
    let input: [Int] = readLine()!.split(separator: " ").map({Int(String($0))!})
    // split, map을 쓰는것이 components와 compactMap을 쓰는것보다 시간효율이 좋음.
    N = input[1]
    M = input[0]
    graph = []

    for _ in 0..<N {
        if let arr = readLine()?.splitInt() {
            // 위 문제처럼 입력이 많은 경우 read, write 작업을 최대한 분리시키는 것이 시간향상에 큰 영향을 끼친다.
            graph.append(arr)
        }
    }
}

func bfs() {
    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 1 {
                queue.enqueue((i, j))
            }
        }
    }
    
    while !queue.isEmpty {
        guard let curr = queue.dequeue() else { return }
        let currY = curr.0
        let currX = curr.1
        
        for currDir in dir {
            let nextY = currY + currDir.0
            let nextX = currX + currDir.1
            
            if isValid(nextY, nextX) && graph[nextY][nextX] == 0 {
                graph[nextY][nextX] = graph[currY][currX] + 1
                queue.enqueue((nextY, nextX))
            }
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= M {
        return false
    }
    return true
}

func printResult() {
    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 0 {
                print("-1")
                return
            } else if graph[i][j] > result {
                result = graph[i][j]
            }
        }
    }
    print(result - 1)
}

input()
bfs()
printResult()
*/

