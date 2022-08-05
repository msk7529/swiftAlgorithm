//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/06/07.

/*

// - 문제를 보고 Union-Find(Disjoint set)을 구현하면 쉽게 풀 수 있는 문제
// - 문제에서 query가 "Total" 일 때, 두 개의 학생이 만약 같은 그룹에 속하면 size를 구할 때 한 번만 계산해야 한다.(각 그룹 사이즈를 더하면 오답) 이러한 설명이 문젱에 누락되어 있는 것 같은데, 출제하게 된다면 문제에 부가설명이 필요함.

func getTheGroups(n: Int, queryType: [String], students1: [Int], students2: [Int]) -> [Int] {
    var unionFind: UnionFind = .init(numOfVertex: n)
    var result: [Int] = []
    
    for i in 0..<queryType.count {
        let query = queryType[i]
        let u = students1[i], v = students2[i]
        
        if query == "Friend" {
            unionFind.union(u, v)
        } else {
            let rootU = unionFind.find(u)
            let rootV = unionFind.find(v)
            
            if rootV == rootU {
                result.append(unionFind.size[rootU])
            } else {
                result.append(unionFind.size[rootU] + unionFind.size[rootV])
            }
        }
    }
    return result
}

print(getTheGroups(n: 4, queryType:  ["Friend", "Friend", "Total"], students1: [1, 2, 1], students2: [2, 3, 4]))
print(getTheGroups(n: 3, queryType: ["Friend", "Total"], students1: [1, 2], students2: [2, 3]))
print(getTheGroups(n: 2, queryType: ["Total"], students1: [1], students2: [1]))
print(getTheGroups(n: 10, queryType: ["Friend", "Total", "Friend", "Total", "Friend", "Total", "Friend", "Total", "Friend", "Total"], students1: [9, 6, 7, 1, 8, 1, 2, 3, 2, 1], students2: [2, 5, 2, 5, 2, 4, 1, 7, 4, 8]))
*/
