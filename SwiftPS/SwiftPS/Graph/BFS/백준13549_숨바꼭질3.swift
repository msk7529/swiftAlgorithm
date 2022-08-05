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
var deque: Deque<(Int, Int)> = .init()

if N == K {
    print("0")
} else if N > K {
    print("\(N - K)")
} else {
    deque.enqueue((N, 0))
    visited[N] = true
    
    while !deque.isEmpty {
        let curr = deque.dequeue()!
        visited[curr.0] = true
        
        if curr.0 == K {
            print(curr.1)
            break
        }
        
        for currDir in dir {
            if currDir != 0 {
                let next = curr.0 + currDir
                
                if isValid(next) && !visited[next] {
                    deque.enqueue((next, curr.1 + 1))
                }
            } else {
                let next = curr.0 * 2
                
                if isValid(next) && !visited[next] {
                    deque.enqueueFront((next, curr.1))
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
