//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/22.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]
let dir: [Int] = [-1, 1, 0]     // 0은 순간이동
var visited: [Bool] = Array(repeating: false, count: 200001)
var queue: Queue<(Int, [Int])> = .init()

if N == K {
    print("0")
    print(N)
} else if N > K {
    print(N - K)
    var move: String = ""
    for i in 0...N - K {
        move += "\(N - i) "
    }
    move.removeLast()
    print(move)
} else {
    var result: Int = 0
    queue.enqueue((N, [N]))
    visited[N] = true
    
    loop: while !queue.isEmpty {
        let count = queue.count
        result += 1
        
        for _ in 0..<count {
            let curr = queue.dequeue()!
            
            for currDir in dir {
                let next = currDir != 0 ? curr.0 + currDir : curr.0 * 2
                
                if isValid(next) && !visited[next] {
                    if next == K {
                        print(result)
                        
                        var move: String = ""
                        for curr in curr.1 + [K] {
                            move += "\(curr) "
                        }
                        move.removeLast()
                        print(move)
                        break loop
                    } else {
                        visited[next] = true
                        queue.enqueue((next, curr.1 + [next]))
                    }
                }
            }
        }
    }
}

func isValid(_ x: Int) -> Bool {
    if x < 0 || x > K * 2 {
        return false
    }
    return true
}
*/
