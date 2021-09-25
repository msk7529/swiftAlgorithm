//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/23.
//
/*
var V: Int = 0
var E: Int = 0
var K: Int = 0
var graph: [[(Int, Int)]] = []

func input() {
    let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    V = input[0]
    E = input[1]
    K = Int(readLine()!)!
    
    graph = Array(repeating: [], count: V+1)
    
    for _ in 0..<E {
        let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
        graph[input[0]].append((input[1], input[2]))
    }
}

input()
var dist: [Int] = dijkstra(src: K, numOfVertex: V)

_ = dist.removeFirst()

for value in dist {
    if value == Int.max {
        print("INF")
    } else {
        print(value)
    }
}
*/
