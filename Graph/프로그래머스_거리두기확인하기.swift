//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/19.
//
/*
import Foundation

let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
var graph: [[Character]] = []
var personsPos: [(Int, Int)] = []
var queue: Queue<(Int, Int)> = .init()
var visited: [[Bool]] = []
var result: [Int] = []

func solution(_ places:[[String]]) -> [Int] {
    for iIndex in 0..<5 {
        personsPos = []
        graph = []
        
        for jIndex in 0..<5 {
            graph.append(places[iIndex][jIndex].map { $0 })     // String은 인덱스로 접근하기 버거우므로 Character 배열로.
        }
        
        for i in 0..<5 {
            for j in 0..<5 {
                if graph[i][j] == "P" {
                    personsPos.append((i, j))   // 응시자가 위치한 곳을 저장해둔다.
                }
            }
        }
        
        if personsPos.isEmpty {
            result.append(1)    // 응시자가 없는 경우는 거리두기가 지켜졌다고 본다.
        } else {
            var isSuccess: Bool = true
            for curr in personsPos {
                // 모든 응시자들에 대해 bfs를 수행
                visited = Array(repeating: Array(repeating: false, count: 5), count: 5)
                queue = .init()
                
                if !check(curr.0, curr.1) {
                    // 한 명의 응시자라도 거리두기를 지키지 못했으면, 거리두기는 지켜지지 않은 것으로 본다.
                    result.append(0)
                    isSuccess = false
                    break
                }
            }
            
            if isSuccess {
                // 모든 응시자들이 거리두기를 지킨 경우
                result.append(1)
            }
        }
    }
    return result
}

func check(_ y: Int, _ x: Int) -> Bool {
    queue.enqueue((y, x))
    visited[y][x] = true
    
    var stage: Int = 1
    
    while !queue.isEmpty && stage <= 2 {
        // 맨허튼 거리 2까지만 확인하면 되므로, while문을 최대 2번만 돌도록 한다.
        let count = queue.count
        
        for _ in 0..<count {
            let curr = queue.dequeue()!
            
            for currDir in dir {
                let nextY = curr.0 + currDir.0
                let nextX = curr.1 + currDir.1
                
                if isVaild(nextY, nextX) && !visited[nextY][nextX] {
                    visited[nextY][nextX] = true
                    
                    if graph[nextY][nextX] == "P" {
                        // 맨허튼 거리 2이내에 응시자가 존재하면 false
                        return false
                    } else if graph[nextY][nextX] == "O" {
                        queue.enqueue((nextY, nextX))
                    }   // graph[nextY][nextX] == "X" 인 경우는 고려하지 않는다. 즉 enqueue 하지 않는다.
                }
            }
        }
        stage += 1
    }
    
    return true
}

func isVaild(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || x < 0 || y >= 5 || x >= 5 {
        return false
    }
    return true
}


print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))

/*
public struct Queue<T> {
    fileprivate var array: [T?] = []
    fileprivate var head: Int = 0

    public var count: Int {
        return array.count - head
    }

    public var isEmpty: Bool {
        return count == 0
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }

    @discardableResult
    public mutating func dequeue() -> T? {
        // 일반적인 queue의 dequeue 연산은 O(N).
        // 매 dequeue 수행시 마다 원소들을 앞으로 한 칸씩 앞으로 이동시키지 말고, 앞에 여백을 주는 식으로 최적화
        guard head < array.count, let element = array[head] else { return nil }

        array[head] = nil
        head += 1

        let percentage: Double = Double(head) / Double(array.count)

        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }

    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}
*/
*/
