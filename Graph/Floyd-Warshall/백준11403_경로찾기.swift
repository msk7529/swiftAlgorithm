//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/24.
//
/*
import Foundation

var N: Int = 0
var graph: [[Int]] = []
let file: FileIO = .init()

func input() {
    N = file.readInt()
    graph = Array(repeating: Array(repeating: 0, count: N), count: N)
    
    for i in 0..<N {
        for j in 0..<N {
            graph[i][j] = file.readInt()
        }
    }
    
    for k in 0..<N {
        for i in 0..<N {
            
            if graph[i][k] == 0 {
                continue
            }
            
            for j in 0..<N {
                if graph[k][j] == 0 {
                    continue
                }
                
                if graph[i][j] == 0 {
                    // 이 조건 하나 써주는게 시간 단축이 많이됨. 매번 write 하는작업이 오래걸리는듯
                    graph[i][j] = 1
                }
            }
        }
    }
    
    for i in 0..<N {
        var line: String = ""
        for j in 0..<N {
            line += "\(graph[i][j]) "
        }
        print(line)
    }
}

input()
*/
