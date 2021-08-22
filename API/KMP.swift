//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/22.
//
func KMP(str: String, pattern: String) -> [Int] {
    // O(n + m). 불일치가 발생하기 직전까지 같았던 부분은 다시 비교하지 않고 패턴 매칭을 진행.
    var result: [Int] = []
    let s = Array(str)
    let p = Array(pattern)
    let pi = getPi(pattern: pattern)
    var j: Int = 0
    
    for i in stride(from: 0, to: str.count, by: 1) {
        while j > 0 && s[i] != p[j] {
            j = pi[j - 1]
        }
        
        if s[i] == p[j] {
            if j == pattern.count - 1 {
                result.append(i - pattern.count + 1)
                j = pi[j]
            } else {
                j += 1
            }
        }
    }
    return result
}

func getPi(pattern: String) -> [Int] {  // O(m)
    // 부분일치 테이블(pi)을 만든다.
    // pi[i]: pattern[0...i]에서 접두사와 접미사가 같을떄의 최대 길이
    let p = Array(pattern)
    var pi: [Int] = Array(repeating: 0, count: pattern.count)
    var j: Int = 0
    
    for i in stride(from: 1, to: pattern.count, by: 1) {
        while j > 0 && p[i] != p[j] {
            // pi를 이용하여 중단단계를 뛰어넘는다.
            j = pi[j - 1]
        }
        
        if p[i] == p[j] {
            j += 1
            pi[i] = j
        }
    }
    return pi
}
