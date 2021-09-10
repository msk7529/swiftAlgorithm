//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/10.
//
/*
func solution(_ words: [String], _ queries: [String]) -> [Int] {
    var trie: [Trie] = []
    var reverseTrie: [Trie] = []
    var result: [Int] = []
    
    for _ in 0...10000 {
        trie.append(Trie())
        reverseTrie.append(Trie())
        // 이거.. let trie: [Trie] = Array(repeating: Trie(), count: 10001) 이걸로 하면 안된다.
        // trie[0], trie[1], ... trie[10000]이 같은 주소값을 갖게됨.
    }
    
    for word in words {
        trie[word.count].insert(word: word)
        reverseTrie[word.count].insert(word: String(word.reversed()))
    }
    
    for query in queries {
        if query.first! != "?" {
            result.append(trie[query.count].childCount(word: query, breakChar: "?"))
        } else {
            let reversedQuery = String(query.reversed())
            result.append(reverseTrie[reversedQuery.count].childCount(word: reversedQuery, breakChar: "?"))
        }
    }
    
    return result
}

print(solution(["frodo", "front", "frost", "frozen", "frame", "kakao"], ["fro??", "????o", "fr???", "fro???", "pro?"]))
*/
