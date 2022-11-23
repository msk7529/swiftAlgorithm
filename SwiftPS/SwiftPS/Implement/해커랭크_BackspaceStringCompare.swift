//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/23

// BruteForce로 앞에서부터 순차탐색하면 쉽게 풀 수 있음. 괜히 어렵게 생각하면 꼬임

/*
func compareStrings(s1: String, s2: String) -> Int {
    var result1 = "", result2 = ""
    
    for char in s1.map({ String($0) }) {
        if char != "#" {
            result1 += char
        } else if !result1.isEmpty {
            result1.removeLast()
        }
    }
    
    for char in s2.map({ String($0) }) {
        if char != "#" {
            result2 += char
        } else if !result2.isEmpty {
            result2.removeLast()
        }
    }
    
    return result1 == result2 ? 1 : 0
}

print(compareStrings(s1: "yf#c#", s2: "yy#k#pp##"))
*/
