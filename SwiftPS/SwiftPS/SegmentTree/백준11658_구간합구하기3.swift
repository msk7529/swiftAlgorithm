//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/02.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var arr: [[Int]] = Array(repeating: [], count: N + 1)
var fenwickTree: [[Int]] = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)   // 펜윅트리는 1번 인덱스를 루트로 한다.
var result: String = ""

for i in 1...N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr[i] = [0] + line // 0번 인덱스는 비운다.
}

for i in 1...N {
    for j in 1...N {
        update(i, j, arr[i][j])
    }
}

for _ in 0..<M {
    var line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let w = line.removeFirst()
    
    if w == 0 {
        let a = line[0], b = line[1], c = line[2]
        update(a, b, c - arr[a][b])   // value에는 diff값을 넣어주어야 한다.
        arr[a][b] = c     // 새로운 값으로 갱신
    } else {
        let a1 = line[0], b1 = line[1], a2 = line[2], b2 = line[3]
        let querySum = getSum(a2, b2) - getSum(a1 - 1, b2) - getSum(a2, b1 - 1) + getSum(a1 - 1, b1 - 1)
        result += "\(querySum)\n"
    }
}

if !result.isEmpty {
    result.removeLast()
    print(result)
}

func getSum(_ y: Int, _ x: Int) -> Int {
    // (1, 1) ~ (y, x)까지의 합을 구한다. O(logN)^2
    var sum: Int = 0
    var y = y
    
    while y > 0 {
        var x = x
        
        while x > 0 {
            sum += fenwickTree[y][x]
            x -= (x & -x)
        }
        y -= (y & -y)
    }
    return sum
}

func update(_ y: Int, _ x: Int, _ value: Int) {
    // O(logN)^2
    var y = y
    
    while y <= N {
        var x = x
        
        while x <= N {
            fenwickTree[y][x] += value
            x += (x & -x)
        }
        y += (y & -y)
    }
}
*/
