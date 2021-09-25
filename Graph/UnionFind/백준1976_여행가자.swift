//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/01.
//
/*
var N: Int = Int(readLine()!)!
var M: Int = Int(readLine()!)!
var unionFind: UnionFind = UnionFind(numOfVertex: N)

func input() {
    for i in 1...N {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        for j in 1...line.count {
            if line[j - 1] == 1 {
                unionFind.union(i, j)
            }
        }
    }

    var finalParent: Int = -1
    let line = readLine()!.split(separator: " ").map({ Int(String($0))! })
    
    for value in line {
        let currParent = unionFind.find(value)
        if finalParent == -1 {
            finalParent = currParent
        } else if finalParent != currParent {
            print("NO")
            return
        }
    }
    print("YES")
}

input()
 */
