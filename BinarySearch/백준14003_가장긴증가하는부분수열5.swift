//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/31.
//
/*
let N = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var indexArr: [Int] = Array(repeating: 0, count: N)
// indexArr[a] = b -> arr배열(원본배열)의 a인덱스에 위치한 숫자는 임시LIS배열의 b번째에 위치.
var tmpLIS: [Int] = []
var LIS: [Int] = []     // 뒤집으면 최종적인 LIS배열
var result: String = ""
var indexToFind: Int = 0

for (index, value) in arr.enumerated() {
    if tmpLIS.isEmpty || value > tmpLIS.last! {
        tmpLIS.append(value)
        indexArr[index] = tmpLIS.count - 1
    } else {
        let pos = tmpLIS.lowerBound(value: value)
        tmpLIS[pos] = value
        indexArr[index] = pos
    }
}

print(tmpLIS.count)

indexToFind = tmpLIS.count - 1

for i in stride(from: N - 1, through: 0, by: -1) {
    // indexToFind를 index의 역순으로 찾아가면서 LIS를 구성한다.
    if indexArr[i] == indexToFind {
        LIS.append(arr[i])
        indexToFind -= 1
    }
}

for curr in LIS.reversed() {
    result += "\(curr) "
}

print(result)
*/
