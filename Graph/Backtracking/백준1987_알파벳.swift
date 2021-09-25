//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/04/27.
//
/*
var R: Int = 0
var C: Int = 0

let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
R = input[0]
C = input[1]

let dir: [(Int, Int)] = [(1,0),(-1,0),(0,1),(0,-1)]
let AofAscii: Int = Int(Character("A").asciiValue!)
var graph: [[Character]] = Array(repeating: [], count: R)
var visited: [Int] = Array(repeating: 0, count: 27)
var result: Int = 0

for i in 0..<R {
    let line: [Character] = readLine()!.map { Character(String($0)) }
    graph[i].append(contentsOf: line)
}

visited[Int(graph[0][0].asciiValue!) - AofAscii] = 1

func dfs(_ y: Int, _ x: Int) {
    let currIdx: Int = Int(graph[y][x].asciiValue!) - AofAscii
    
    for currDir in dir {
        let nextY = y + currDir.0
        let nextX = x + currDir.1

        if isValid(nextY, nextX) && visited[Int(graph[nextY][nextX].asciiValue!) - AofAscii] == 0 {
            let nextIdx: Int = Int(graph[nextY][nextX].asciiValue!) - AofAscii
            
            visited[nextIdx] = visited[currIdx] + 1
            result = max(result, visited[nextIdx])
            dfs(nextY, nextX)
            visited[nextIdx] = 0
        }
    }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= R || x < 0 || x >= C {
        return false
    }
    return true
}

dfs(0, 0)
print(result)
*/

