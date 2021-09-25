//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/20.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var graph: [[Int]] = Array(repeating: Array(repeating: 987654321, count: N + 1), count: N + 1)
var minDist = Int.max
var result = 0

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[line[0]][line[1]] = 1
    graph[line[1]][line[0]] = 1
}

for j in 1...N {
    for i in 1...N {
        for k in 1...N {
            if graph[i][k] > graph[i][j] + graph[j][k] {
                graph[i][k] = graph[i][j] + graph[j][k]
            }
        }
    }
}

for i in 1...N {
    graph[i][i] = 0
}

for i in 1...N {
    var curr = 0
    curr = graph[i].reduce(0, +)

    if curr < minDist {
        minDist = curr
        result = i
    }
}

print(result)
*/
