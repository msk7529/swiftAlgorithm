//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/31

/*
 getPi, KMP 메서드 스스로 작성은 실패. 문제풀이는 성공. 유형만 기억해두고 알고리즘 활용하는걸로 ..
 */

/*
let word = readLine()!.filter { !$0.isNumber }.map { $0 }
let pattern = readLine()!.map { $0 }

func KMP() -> Int {
    var j = 0
    let pi = getPi()
    
    for i in 0..<word.count {
        while j > 0 && word[i] != pattern[j] {
            j = pi[j - 1]
        }
        
        if word[i] == pattern[j] {
            if j == pattern.count - 1 {
                return 1
            } else {
                j += 1
            }
        }
    }
    return 0
}

func getPi() -> [Int] {
    var j = 0
    var pi: [Int] = Array(repeating: 0, count: pattern.count)
    
    for i in 1..<pattern.count {
        while j > 0 && pi[i] != pi[j] {
            j = pi[j - 1]
        }
        
        if pi[i] == pi[j] {
            j += 1
            pi[i] = j
        }
    }
    return pi
}

if KMP() == 1 {
    print("1")
} else {
    print("0")
}
*/
