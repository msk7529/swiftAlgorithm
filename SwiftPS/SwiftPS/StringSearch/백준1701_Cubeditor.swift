//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/23.
//
/*
// 문제에서 부분문자열이 두 번 이상 나오는 경우가 존재한다는 것은, 부분문자열중에 접두사와 접미사가 같은 경우가 있다는 것이다. 즉, pi값이 최대인 경우가 답이 된다.
let str = Array(readLine()!)
var result: Int = 0

for i in 0..<str.count-1 {
    // 기존 getPi함수에 넘겨주는 패턴문자열을, 길이를 줄여가며 pi구성을 반복한다.
    let currStr = Array(str[i...str.count-1])
    getPi2(pattern: currStr)
}

print(result)

func getPi2(pattern p: [Character]) {  // O(m)
    var pi: [Int] = Array(repeating: 0, count: p.count)
    var j: Int = 0
    
    for i in stride(from: 1, to: p.count, by: 1) {
        while j > 0 && p[i] != p[j] {
            j = pi[j - 1]
        }
        
        if p[i] == p[j] {
            j += 1
            pi[i] = j
            result = max(result, j)
        }
    }
}
*/
