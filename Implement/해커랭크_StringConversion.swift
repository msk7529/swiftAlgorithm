//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/06/07.

/*
// 주어진 문자열로 얻어지는 b는 정렬로 쉽게 구할 수 있으므로 b를 구한뒤, b를 만들기 위한 reorder 과정을 역순으로 계산하면 쉽게 풀 수 있다.
func getOptimalString(s: String) -> String {
    let b = s.sorted { $0 > $1 }.map { String($0) }
    let len = s.count
    let reversedB = b.reversed().map { String($0) }
    var result: [String] = []
    var isBack: Bool = true
    
    for i in 0..<len {
        let curr: String
        if isBack {
            curr = reversedB[len - 1 - i / 2]
        } else {
            curr = reversedB[i / 2]
        }
        isBack.toggle()
        result.append(curr)
    }
    return result.reversed().joined()
}

print(getOptimalString(s: "011"))
print(getOptimalString(s: "1100"))
print(getOptimalString(s: "111"))
*/
