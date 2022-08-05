//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/27.
//
/*
typealias Ball = (index: Int, color: Int, size: Int)
let N = Int(readLine()!)!
var arr: [Ball] = []
var totalSum: Int = 0   // 현재까지 누적합
var totalSumWithColor: [Int] = Array(repeating: 0, count: N + 1)   // totalSumWithColor[i]: 현재까지 발견된 공들중 i색을 가진 공들의 크기 누적합
var numberOfBallWithSameSize: [Int] = Array(repeating: 0, count: 2001)  // numberOfBallWithSameSize[i]: 현재까지 발견된 공들중 i크기를 가지는 공들의 개수
var result: [(Int, Int)] = []
var resultString: String = ""

for i in 1...N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(Ball(i, line[0], line[1]))
}
//arr.sort { $0.size < $1.size }  // (1, 4), (2, 4), (1, 4)와 같은 입력이 들어오면 오답
arr.sort { $0.size == $1.size ? $0.color < $1.color : $0.size < $1.size }   // 크기와 색깔을 기준으로 오름차순 정렬

for i in 0..<N {
    var currSum: Int = 0
    
    if i > 0 && arr[i].size == arr[i - 1].size && arr[i].color == arr[i - 1].color {
        // 현재 탐색중인 공의 색깔, 크기가 이전과 동일하면 이전의 결과를 가져다가 쓴다. 여기가 문제해결의 핵심..(이래서 크기와 색깔을 함께 정렬의 기준으로 잡아야 함)
        // 이렇게 안하면 numberOfBallWithSameSize배열처럼 처리를 해야되는데 이러면 2차원배열을 써야하고 메모리초과가 발생. 일종의 트릭인듯..
        currSum = result[i - 1].1
    } else {
        // 누적합에서 같은 색깔의 공들과 같은 크기의 공들을 제외해준다. 색깔과 크기가 모두 같은 경우의 처리는 위 if문에서 했으므로 무시.
        currSum = totalSum - totalSumWithColor[arr[i].color] - (numberOfBallWithSameSize[arr[i].size] * arr[i].size)
    }
    result.append((arr[i].index, currSum))
    
    totalSum += arr[i].size
    totalSumWithColor[arr[i].color] += arr[i].size
    numberOfBallWithSameSize[arr[i].size] += 1
}

result.sort { $0.0 < $1.0 } // 인덱스를 기준으로 오름차순 정렬

for curr in result {
    resultString += "\(curr.1)\n"
}
resultString.removeLast()
print(resultString)
*/
