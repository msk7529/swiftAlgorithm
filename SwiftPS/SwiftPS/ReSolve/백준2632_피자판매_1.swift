//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/30

/*
 누적합 배열 구성에 삽질하느라 시간이 좀 늦었지만 통과. 누적합 문제 풀 땐 배열을 1-base로 하는게 좋을듯.
 */

/*
let N = Int(readLine()!)!
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = line[0], m = line[1]
var arrA: [Int] = []
var arrB: [Int] = []
var totalSum = 0
var pSumA: [Int] = [0]
var pSumB: [Int] = [0]
var pizzaDicA: [Int: Int] = [:]
var result: Int = 0

for _ in 0..<n {
    let num = Int(readLine()!)!
    arrA.append(num)
    totalSum += num
    pSumA.append(totalSum)
}

totalSum = 0
for _ in 0..<m {
    let num = Int(readLine()!)!
    arrB.append(num)
    totalSum += num
    pSumB.append(totalSum)
}

for i in 1...n {
    for j in 1...n {
        let currSum: Int
        if i <= j {
            currSum = pSumA[j] - pSumA[i - 1]
        } else {
            if i == j + 1 {
                continue
            }
            currSum = pSumA[n] - pSumA[i - 1] + pSumA[j]
        }
        
        if currSum == N {
            // 피자 A만으로 완성되는 경우
            result += 1
        } else {
            pizzaDicA[currSum, default: 0] += 1
        }
    }
}

for i in 1...m {
    for j in 1...m {
        let currSum: Int
        if i <= j {
            currSum = pSumB[j] - pSumB[i - 1]
        } else {
            if i == j + 1 {
                continue
            }
            currSum = pSumB[m] - pSumB[i - 1] + pSumB[j]
        }
        
        if currSum == N {
            // 피자 B만으로 완성되는 경우
            result += 1
        } else {
            if let num = pizzaDicA[N - currSum] {
                result += num
            }
        }
    }
}

print(result)
*/
