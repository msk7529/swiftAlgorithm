//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/31.
//
/*
func solution(_ new_id: String) -> String {
    let first = new_id.lowercased()
    var second = Array(first.filter { $0.isLowercase || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." })
    for i in 0..<second.count {
        if second[i] == "." {
            for j in stride(from: i + 1, to: second.count, by: 1) {
                if second[j] == "." {
                    second[j] = "!"
                } else {
                    break
                }
            }
        }
    }
    let third = second.filter { $0 != "!" }.map { String($0) }.joined()
    var fourth = third
    if let char = fourth.first, char == "." {
        fourth.removeFirst()
    }
    if let char = fourth.last, char == "." {
        fourth.removeLast()
    }
    
    var result = fourth
    
    if result.isEmpty {
        result = "a"
    } else if result.count >= 16 {
        var tmp = ""
        for (index, curr) in result.enumerated() {
            if index == 15 { break }
            tmp += String(curr)
        }
        if let char = tmp.last, char == "." {
            tmp.removeLast()
        }
        result = tmp
    }
    
    if result.count <= 2 {
        let lastChar = String(result.last!)
        while result.count != 3 {
            result += lastChar
        }
    }
    
    return result
}

print(solution("...!@BaT#*..y.abcdefghijklm"))
print(solution("z-+.^."))
print(solution("=.="))
print(solution("123_.def"))
print(solution("abcdefghijklmn.p"))
*/
