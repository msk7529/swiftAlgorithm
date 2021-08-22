//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/23.
//
/*
let str = Array(readLine()!)
let pattern = Array(readLine()!)

print(KMPSearch(str: str, pattern: pattern) ? "1" : "0")

func KMPSearch(str s: [Character], pattern p: [Character]) -> Bool {
    let pi = getPi(pattern: p)
    var j: Int = 0
    
    for i in stride(from: 0, to: s.count, by: 1) {
        while j > 0 && s[i] != p[j] {
            j = pi[j - 1]
        }
        
        if s[i] == p[j] {
            if j == p.count - 1 {
                return true
            } else {
                j += 1
            }
        }
    }
    return false
}

func getPi(pattern p: [Character]) -> [Int] {  // O(m)
    var pi: [Int] = Array(repeating: 0, count: p.count)
    var j: Int = 0
    
    for i in stride(from: 1, to: p.count, by: 1) {
        while j > 0 && p[i] != p[j] {
            j = pi[j - 1]
        }
        
        if p[i] == p[j] {
            j += 1
            pi[i] = j
        }
    }
    return pi
}
*/
