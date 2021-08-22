//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/23.
//
/*
let str = Array(readLine()!.filter { !$0.isNumber })
let pattern = Array(readLine()!)

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

print(KMPSearch(str: str, pattern: pattern) ? "1" : "0")
*/
