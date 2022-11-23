//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/23

// 해싱을 생각해낼 수 있느냐가 관건 & 조합

/*
func countSimilarPairs(words: [String]) -> Int {
    var reducedWords: [String] = []
    var dic: [String: Int] = [:]
    var result = 0
    
    for word in words {
        var set: Set<Character> = .init()
        for char in word {
            set.insert(char)
        }
        
        var reducedWord: String = ""
        
        for char in set {
            reducedWord += String(char)
        }
        reducedWords.append(String(reducedWord.sorted()))
    }
    
    for reducedWord in reducedWords {
        dic[reducedWord, default: 0] += 1
    }
    
    for value in dic.values {
        result += (value * (value - 1)) / 2
    }

    return result
}

print(countSimilarPairs(words: ["aba", "abaca", "baab", "cba"]))
print(countSimilarPairs(words: ["abab", "aaaaab", "bbbba"]))
*/
