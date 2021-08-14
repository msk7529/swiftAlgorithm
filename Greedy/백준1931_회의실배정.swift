//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/15.
//
/*
let N = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((line[0], line[1]))
}

// 시작과 끝이 같은 경우가 있을 수 있기 때문에, 끝 시간이 동일한 경우에는 시작시간이 느린 순서대로 정렬한다. ex) (3, 4), (7, 7), (5, 7)
print(arr.sorted { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }.reduce((0, 0)) { result, curr in
    if curr.0 >= result.1 {
        return (result.0 + 1, curr.1)
    }
    return result
}.0)
*/
