//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/12.
//
/*
import Foundation

var N: Int = 0
var M: Int = 0
var graph: [[Int]] = []
var visited: [Bool] = []
var result: Int = 0

func input() {
    N = Int(readLine()!)!
    M = Int(readLine()!)!
    
    graph = Array(repeating: [], count: N+1)
    visited = Array(repeating: false, count: N+1)
    
    for _ in 0..<M {
        let edge: [String] = readLine()!.components(separatedBy: " ")
        let num1: Int = Int(edge[0])!
        let num2: Int = Int(edge[1])!
        
        graph[num1].append(num2)
        graph[num2].append(num1)
    }
}

func dfs(_ curr: Int) {
    visited[curr] = true
    result += 1
    
    for next in graph[curr] {
        if !visited[next] {
            dfs(next)
        }
    }
}

input()
dfs(1)
print(result-1)
*/
