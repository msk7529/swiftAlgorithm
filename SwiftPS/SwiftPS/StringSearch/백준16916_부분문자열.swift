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
    // O(len(s) + len(p))
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

func getPi(pattern p: [Character]) -> [Int] {
    // O(len(p))
    // i와 j 인덱스를 활요해서 실패함수 구현.
    // i는 현재 탐색위치를 표시하는 포인터 역할, j는 현재 어디까지 일치하는지 표시하는 포인터 역할
    // 인덱스를 증가시켜나가며 두 문자가 일치하면 두 인덱스를 증가시키고, 일치하지 않으면 이전까지의 실패함수를 참고하여 참고할 값이 없으면 0이 된다.
    var pi: [Int] = Array(repeating: 0, count: p.count)  // pi[i]: pi[0...i] 문자열의 접두사이면서 접미사인 최대 문자열의 길이
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
