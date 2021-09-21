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
var queue: Queue<Int> = .init()
var resultCnt: Int = 0
var resultTime: Int = 0

if N == K {
    print("0")
    print("1")
} else if N > K {
    // 0초에 수빈이가 동생보다 오른쪽에 있는 경우에는 -1로만 계속 이동하는 경우의 수만 존재한다.
    print("\(N - K)")
    print("1")
} else {
    queue.enqueue(N)
    
    while !queue.isEmpty {
        let count = queue.count
        resultTime += 1
        
        for _ in 0..<count {
            let curr = queue.dequeue()!
            visited[curr] = true    // dequeue시에 true로 해주는것이 핵심
            
            for currDir in dir {
                let next = currDir != 0 ? curr + currDir : curr * 2
                
                if isValid(next) && !visited[next] {
                    if next == K {
                        resultCnt += 1
                    } else {
                        queue.enqueue(next)
                    }
                }
            }
        }
        
        if resultCnt > 0 {
            print(resultTime)
            print(resultCnt)
            break
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
