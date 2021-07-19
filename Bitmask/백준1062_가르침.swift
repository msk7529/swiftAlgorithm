//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/20.
//
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = input[0]
let K: Int = input[1]
var words: [Int] = Array(repeating: 0, count: N)   // 알파벳으로 이루어진 단어를 Bitmask형태로 구성

for i in 0..<N {
    let word = readLine()!
    for curr in word {
        // ex) curr이 "ac" 이면, words[i] = 5
        let bit = Int(curr.asciiValue!) - 97
        words[i] |= (1 << bit)
    }
}

if K < 5 {
    print("0")
} else if K == 26 {
    print(N)
} else {
    let needChar: [Character] = ["a", "n", "t", "i", "c"]   // 이미 배운 알파벳
    var initState: Int = 0
    
    for char in needChar {
        initState |= (1 << (char.asciiValue! - 97))
    }
    
    print(dfs(curr: 1, count: 5, state: initState))
}

func dfs(curr: Int, count: Int, state: Int) -> Int {
    var result: Int = 0
    
    if count == K {
        for word in words {
            if (word & state) == word {
                result += 1
            }
        }
        return result
    }
    
    for bit in curr..<26 {
        if state & (1 << bit) == 0 {
            result = max(result, dfs(curr: bit + 1, count: count + 1, state: state | (1 << bit)))
        }
    }
    
    return result
}

func bitmaskToCharArray(_ num: Int) -> [Character] {
    // bitmask 형태의 num을 Character 배열로 반환한다.
    // ex) num: 4 -> ["c"]
    // ... 이거 연산속도가 너무 느려서 비트마스킹 문제에선 이거 사용하면 안됨.
    let andResult = num & ((1 << 26) - 1)
    var result: [Character] = []
    
    for (index, value) in String(andResult, radix: 2).reversed().enumerated() {
        if value == "1" {
            result.append(Character(Unicode.Scalar.init(index + 97)!))
        }
    }
    
    return result
}
*/
