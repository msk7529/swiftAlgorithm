//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/23.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
var K = input[1]
let dir: [Int] = [-1, 1, 0]     // 0은 순간이동
var visited: [[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: 500001)
// visited[i][j]: 수빈이 i위치에 도달하는 최단시간. 홀수 시간에 처음 도착하는 위치는 그 다음 홀수 시간들에도 항상 도달할 수 있고, 짝수 시간에 처음 도착하는 위치는 그 다음 짝수 시간들에도 항상 도달할 수 있다.
var queue: Queue<(Int, Int)> = .init()

if N == K {
    print("0")
} else {
    moveSubin()
    moveSister()
}

func moveSubin() {
    // 수빈이의 이동을 모두 탐색하고, 위치들을 최초로 방문하게 되는 시간을 visited에 기록한다.
    // 수빈이가 짝수초에 접근한 위치는 짝수초에 또 방문할 수 있고, 홀수초에 접근한 위치는 홀수초에 또 방문할 수 있다는 점이 핵심.
    queue.enqueue((N, 0))
    visited[N][0] = 0
    
    while !queue.isEmpty {
        let curr = queue.dequeue()!
        
        for currDir in dir {
            let next = currDir != 0 ? curr.0 + currDir : curr.0 * 2
            
            if isValid(next) && visited[next][(curr.1 + 1) % 2] == -1 {
                visited[next][(curr.1 + 1) % 2] = curr.1 + 1
                queue.enqueue((next, curr.1 + 1))
            }
        }
    }
}

func moveSister() {
    // 시간에 따라 동생의 위치를 증가시키며 수빈이를 만날 수 있는지 확인한다.
    var time: Int = 1
    K += time
    
    while K <= 500000 {
        if visited[K][time % 2] != -1 && visited[K][time % 2] <= time {
            print(time)
            return
        }
        
        time += 1
        K += time
    }
    print("-1")
}

func isValid(_ x: Int) -> Bool {
    if x < 0 || x > 500000 {
        return false
    }
    return true
}
*/
