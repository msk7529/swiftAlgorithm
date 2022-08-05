//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/30.
//
// (pSum[j] - pSum[i]) % MOD = 0 이 만족한다면, pSum[j] % MOD = pSum[i] % MOD도 만족하게 된다.
// 참고: cocoon1787.tistory.com/396
/*
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var arr: [Int] = [0] + readLine()!.split(separator: " ").map { Int(String($0))! % M }
var cntSum: [Int: Int] = [:]    // cntSum[i]: 현재까지의 누적합이 i인 구간의 개수
var totalSum: Int = 0   // 현재까지의 누적합
var result: Int = 0

for i in 1...N {
    let pSum: Int = (totalSum + arr[i]) % M
    cntSum[pSum, default: 0] += 1
    totalSum = pSum
    
    if pSum == 0 { result += 1 }    // pSum == 0 이면 현재까지의 누적합이 M의 배수이므로 조합할 필요 없이 여기서 개수를 증가시킨다.
}

for curr in cntSum {
    result += (curr.value * (curr.value - 1) / 2)   // nC2
}
print(result)
*/
