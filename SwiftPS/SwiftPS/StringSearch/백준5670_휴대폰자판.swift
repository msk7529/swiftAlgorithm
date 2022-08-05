//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/16.
//
/*
import Foundation

var result: [Int] = []

while let input = readLine(), let num = Int(input) {
    let trie: Trie = .init()
    var words: [String] = Array(repeating: "", count: num)
    result = []
    
    for i in 0..<num {
        words[i] = readLine()!
    }
    
    for word in words {
        trie.insert(word: word)
    }
    
    trie.search(curr: trie.root, count: 0)
    
    let average = Double(result.reduce(0, +)) / Double(num)
    print(String(format: "%.2f", average))  // Foundation import 필요
}

extension Trie {
    func search(curr: TrieNode<Character>, count: Int) {
        if curr.isTerminating {
            // 단어가 완성된 경우. 그러나 자식 노드는 존재할 수 있음
            result.append(count)
            
            if curr.children.count == 0 {    // 단어가 완성되었으며 자식노드가 없는(즉 리프) 경우 종료
                return
            }
        }
        
        if curr.value == nil {
            // curr이 트라이의 루트이면 무조건 카운트를 1 증가시킨다.
            for child in curr.children.values {
                search(curr: child, count: count + 1)
            }
        } else {
            if curr.children.count == 1 {
                if curr.isTerminating {
                    // curr과 직접연결된 자식노드가 한 개 존재하는데, 단어가 완성된 경우는 count를 증가시킨다.
                    search(curr: curr.children.first!.value, count: count + 1)
                } else {
                    search(curr: curr.children.first!.value, count: count)
                }
            } else {
                for child in curr.children.values {
                    search(curr: child, count: count + 1)
                }
            }
        }
    }
}
*/
