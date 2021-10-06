//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/07.
//
/*
// 님게임2와 같은 유형인데 마지막에 돌을 제거하는 사람이 지는 경우.. 예외처리가 필요함
let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: Int = 0

let hasOneStoneDummyCount = arr.filter { $0 == 1 }.count

if hasOneStoneDummyCount == N {
    // 모든 돌더미에 돌이 1개만 쌓여있으면, 돌더미가 홀수인 경우 선공이 지게 된다.
    print(N % 2 == 0 ? "koosaga" : "cubelover")
} else if hasOneStoneDummyCount % 2 == 1 || hasOneStoneDummyCount == 0 {
    // 돌더미에 쌓여있는 돌이 1개인 더미의 개수가 홀수거나 존재하지 않는 경우
    for curr in arr {
        result ^= curr
    }
    print(result != 0 ? "koosaga" : "cubelover")
} else {
    // 돌더미에 쌓여있는 돌이 1개인 더미의 개수가 짝수인 경우, 임의로 한 개 더미의 돌을 1로 바꿔준다. 즉, 1개인 더미의 개수를 홀수로 맞춰준다.
    if let index = arr.firstIndex(where: { $0 != 1 }) {
        arr[index] = 1
    }
    
    for curr in arr {
        result ^= curr
    }
    print(result != 0 ? "koosaga" : "cubelover")
}
*/
