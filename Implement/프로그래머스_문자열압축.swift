//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/10.
//
/*
func solution(_ s: String) -> Int {
    let str = s.map { String($0) }
    var result: Int = .max
    
    for len in 1...s.count {
        var startIndex = 0
        var prevStr: String = ""
        var prevStrCnt: Int = 0
        var resultStr: String = ""
        
        while true {
            if startIndex + len > s.count {
                // 이전까지 저장했던 문자열을 처리하고, 끝의 나머지를 처리한 후 종료한다.
                let curr = str[startIndex..<s.count].joined()
                
                if prevStrCnt == 1 {
                    resultStr += prevStr
                } else {
                    resultStr += String(prevStrCnt) + prevStr
                }
                
                resultStr += curr
                break
            }
            
            let curr = str[startIndex..<startIndex+len].joined()
            startIndex += len
            
            if curr == prevStr {
                prevStrCnt += 1
            } else {
                if prevStr.isEmpty {
                    prevStr = curr
                    prevStrCnt += 1
                } else {
                    if prevStrCnt == 1 {
                        resultStr += prevStr
                    } else {
                        resultStr += String(prevStrCnt) + prevStr
                    }
                    prevStr = curr
                    prevStrCnt = 1
                }
            }
            
            if startIndex == s.count {
                // 이번 턴에 처리한 문자열을 처리하고 종료한다.
                if prevStrCnt == 1 {
                    resultStr += prevStr
                } else {
                    resultStr += String(prevStrCnt) + prevStr
                }
                break
            }
        }
        result = min(result, resultStr.count)
    }
    return result
}

print(solution("aabbaccc"))
print(solution("ababcdcdababcdcd"))
print(solution("abcabcdede"))
print(solution("abcabcabcabcdededededede"))
print(solution("xababcdcdababcdcd"))
*/
