//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/14.
//
/*
let N: Int = Int(readLine()!)!
var result: Int = 0

for _ in 0..<N {
    var alphabet: Set<Character> = .init()
    var success: Bool = true
    
    let word: String = readLine()!
    var prev: Character = "A"
    
    for curr in word {
        if prev != curr {
            if alphabet.contains(curr) {
                success = false
                break
            } else {
                alphabet.insert(curr)
                prev = curr
            }
        }
    }
    
    if success {
        result += 1
    }
}

print(result)
*/
