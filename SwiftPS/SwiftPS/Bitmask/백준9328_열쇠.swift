//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/25.
//
/*
let T: Int = Int(readLine()!)!
var N: Int = 0
var M: Int = 0
let dir: [(Int, Int)] = [(0, 1), (0, -1), (-1, 0), (1, 0)]

for _ in 0..<T {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    N = line[0] + 2    // 임시테두리를 만들어주기 위해 높이와 너비에 2를 더함. 이렇게 하면 bfs(0, 0) 한번만 해도 됨.
    M = line[1] + 2
    var arr: [[Character]] = Array(repeating: Array(repeating: ".", count: M), count: N)
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
    var queue: Queue<(Int, Int)> = .init()
    var doorQueue: [Queue<(Int, Int)>] = Array(repeating: .init(), count: 26)
    var keyState: Int = 0   // 이 문제에서는 비트마스킹을 사용했지만, bool 배열로 확인해도 관계없다.
    var result: Int = 0
    
    for i in 1...N-2 {
        // [0][0] 부터 값을 넣지않고 [1][1]부터 값을 넣는다.
        let line = readLine()!.map { $0 }
        for j in 1...line.count {
            arr[i][j] = line[j-1]
        }
    }
    
    readLine()!.map { $0 }.forEach {
        if $0 == "0" {
            // 예외처리 주의.
            return
        }
        let bit = $0.asciiValue! - 97
        keyState |= (1 << bit)
    }
    
    queue.enqueue((0,0))
    visited[0][0] = true
    
    while !queue.isEmpty {
        let curr = queue.dequeue()!
        
        for currDir in dir {
            let nextY = curr.0 + currDir.0
            let nextX = curr.1 + currDir.1
            
            if isValid(nextY, nextX) && !visited[nextY][nextX] {
                switch arr[nextY][nextX] {
                case "*":
                    continue
                case ".":
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                case let char where char.isUppercase:
                    let bit = char.asciiValue! - 65
                    if keyState & (1 << bit) > 0 {
                        queue.enqueue((nextY, nextX))
                        visited[nextY][nextX] = true
                    } else {
                        doorQueue[Int(bit)].enqueue((nextY, nextX))
                        // 이 문제의 핵심. 아직 방문할 수 없는 문을 만나면 큐에 보관해둔다. 배열도 관계없음.
                    }
                case let char where char.isLowercase:
                    let bit = char.asciiValue! - 97
                    keyState |= (1 << bit)
                    
                    while !doorQueue[Int(bit)].isEmpty {
                        // 이 문제의 핵심. 키를 발견하면 현재까지 발견한 문의 위치를 담고있는 큐에서 위치정보를 모두 빼내어 그대로 큐에 넣는다.
                        let curr = doorQueue[Int(bit)].dequeue()!
                        visited[curr.0][curr.1] = true
                        queue.enqueue(curr)
                    }
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                case "$":
                    result += 1
                    queue.enqueue((nextY, nextX))
                    visited[nextY][nextX] = true
                default:
                    continue
                }
            }
        }
    }
    print(result)
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if x < 0 || x >= M || y < 0 || y >= N {
        return false
    }
    return true
}
*/
