//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/17.
//
/*
struct UnionFindEx {
    var parent: [Int] = []
    
    init(numOfVertex: Int) {
        for i in 0...numOfVertex {
            parent.append(i)
        }
    }
    
    mutating func find(_ node: Int) -> Int {
        if node != parent[node] {
            parent[node] = find(parent[node])
        }
        return parent[node]
    }
    
    mutating func union(_ nodeU: Int, _ nodeV: Int) {
        let rootU: Int = find(nodeU)
        let rootV: Int = find(nodeV)
        
        if rootU == rootV { return }
        
        // 부모가 0이 되는 경우를 알아야 하기 때문에 이 문제에서는 rank를 따지지않고 무조건 u를 v에 붙여준다.
        parent[rootU] = rootV
    }
}


let G = Int(readLine()!)!
let P = Int(readLine()!)!
var arr: [Int] = []
var disjointSet: UnionFindEx = .init(numOfVertex: G)
var result = 0

for _ in 0..<P {
    arr.append(Int(readLine()!)!)
}

for curr in arr {
    let parent = disjointSet.find(curr)
    
    // 부모노드가 gi부터 내려가다가 0까지 갔다면 그 중간에 있는 모든 게이트가 도킹완료되었음을 의미한다.
    if parent == 0 {
        break
    }
    
    disjointSet.union(parent, parent - 1)
    result += 1
}

print(result)
*/
