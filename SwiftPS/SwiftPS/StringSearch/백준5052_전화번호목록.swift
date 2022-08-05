//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/05.
//
/*
for _ in 0..<Int(readLine()!)! {
    let N = Int(readLine()!)!
    var words: [String] = Array(repeating: "", count: N)
    var result: Bool = true

    for i in 0..<N {
        words[i] = readLine()!
    }
    words.sort()    // 정렬이 핵심

    for i in stride(from: 0, to: N - 1, by: 1) {
        if words[i + 1].hasPrefix(words[i]) {
            result = false
            break
        }
    }
    print(result ? "YES" : "NO")
}
*/
