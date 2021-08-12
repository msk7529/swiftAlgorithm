//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/13.
//
/*
func getSum(_ index: Int) -> Int {
    var ans = 0, index = index
    
    while index > 0 {
        ans += penwickTree[index]
        index -= (index & -index)
    }
    return ans
}

func update(_ index: Int, _ num: Int) {
    var index = index
    
    while index <= n + m {
        penwickTree[index] += num
        index += (index & -index)
    }
}

let T = Int(readLine()!)!
var n = 0, m = 0
var penwickTree: [Int] = []
var movieNum: [Int] = []
var index: [Int] = []   // index[i]: i번 DVD가 위치한 펜윅트리상 인덱스
var lastEmptyIndex: Int = 0     // 펜윅트리에 비어있는 인덱스 중 가장 큰 인덱스, 즉 DVD가 쌓이게 되는 위치
var result: String = ""

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    n = input[0]
    m = input[1]
    movieNum = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    index = Array(repeating: 0, count: 100001)
    penwickTree = Array(repeating: 0, count: n + m + 1)     // 문제의 핵심. (n개의 공간 + m개가 쌓일 가상의 빈공간)을 펜윅트리의 크기로 설정한다. 펜윅트리는 1번노드를 루트로 사용하므로 크기에 1을 더해준다.
    lastEmptyIndex = m
    result = ""
    
    for i in 1...n {
        // 초기 각 DVD가 위치하는 인덱스를 지정하고 펜윅트리를 업데이트한다.
        index[i] = m + i + 1
        update(m + i + 1, 1)
    }
    
    for i in 0..<m {
        let moviePos = index[movieNum[i]]   // 찾고자하는 DVD가 위치한 인덱스를 찾아서
        result += "\(getSum(moviePos - 1)) "    // 그 이전까지 누적합을 구한다.
        update(moviePos, -1)
        update(lastEmptyIndex, 1)           // 펜윅트리 업데이트
        index[movieNum[i]] = lastEmptyIndex     // 해당 DVD를 맨 위로 올린다.
        lastEmptyIndex -= 1
    }
    
    result.removeLast()
    print(result)
}
*/
