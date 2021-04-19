//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/20.
//
/*
var N: Int = 0
var M: Int = 0
var u: Int = 0
var v: Int = 0
var inputNumbers: [[Int]] = []
var graph: [[Int]] = []
var visited: [Bool] = []
var result: Int = 0

func input() {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    N = input[0]
    M = input[1]
    
    graph = Array(repeating: [], count: N + 1)
    visited = Array(repeating: false, count: N + 1)
    
    for _ in 0..<M {
        inputNumbers.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }
    
    for numbers in inputNumbers {
        graph[numbers[0]].append(numbers[1])
        graph[numbers[1]].append(numbers[0])
    }
}

func dfs(num: Int) {
    visited[num] = true
    
    for next in graph[num] {
        if !visited[next] {
            dfs(num: next)
        }
    }
}

input()
for num in 1...N {
    if !visited[num] {
        result += 1
        dfs(num: num)
    }
}
print(result)
*/
