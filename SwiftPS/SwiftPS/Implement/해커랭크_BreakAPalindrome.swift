//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/05/26.

// 주어진 펠린드롬 문자열의 맨 앞 문자부터 작은 알파벳으로 치환한 다음 펠린드롬 문자열이 아닌지 검사하면 쉽게 풀 수 있는 문제.

/*
func breakPalindrome(palindromeStr: String) -> String {
    // Write your code here
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    var tmpStr = palindromeStr.map { String($0) }
    
    for i in 0..<palindromeStr.count {
        let lastIndex = alphabet.firstIndex(of: tmpStr[i]) ?? 0
        for j in 0..<lastIndex {
            tmpStr[i] = alphabet[j]
            if !isPalindrome(tmpStr) {
                return tmpStr.joined()
            }
        }
        tmpStr = palindromeStr.map { String($0) }
    }
    return "IMPOSSIBLE"
}

func isPalindrome(_ word: [String]) -> Bool {
    return word.joined() == word.reversed().joined()
}


print(breakPalindrome(palindromeStr: "acca"))
print(breakPalindrome(palindromeStr: "bab"))
print(breakPalindrome(palindromeStr: "aaa"))
print(breakPalindrome(palindromeStr: "aaabbaaa"))
*/
