//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/07/30

/*
 첫 풀이까지의 생각도 오래걸리고 생각자체도 틀렸음. Ball sort도 잘못되어서 중간에 수정
 같은컬러에 대한 예외처리만 했었는데 같은 크기에 대한 예외처리까지 생각했어야 함.
 */

/*
struct Ball: Comparable {
    let idx: Int
    let color: Int
    let size: Int
    
    static func < (lhs: Ball, rhs: Ball) -> Bool {
        if lhs.size == rhs.size {
            // 이 처리를 안하면 (1, 4), (2, 4), (1, 4) 같은 케이스에서 오답
            return lhs.color < rhs.color
        }
        return lhs.size < rhs.size
    }
}

let N = Int(readLine()!)!
var arr: [Ball] = []
var totalSum: Int = 0
var colorTotalSum: [Int] = Array(repeating: 0, count: N + 1)
var sizeTotalSum: [Int] = Array(repeating: 0, count: 2001)
var result: [(Int, Int)] = []
var resultStr: String = ""

for i in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(Ball(idx: i + 1, color: line[0], size: line[1]))
}
arr.sort()

for i in 0..<arr.count {
    let currBall = arr[i]

    if i > 0 && arr[i].size == arr[i-1].size && arr[i].color == arr[i-1].color {
        result.append((currBall.idx, result[i-1].1))
    } else {
        result.append((currBall.idx, totalSum - colorTotalSum[currBall.color] - sizeTotalSum[currBall.size]))
    }
    
    totalSum += currBall.size
    colorTotalSum[currBall.color] += currBall.size
    sizeTotalSum[currBall.size] += currBall.size
}

result.sort { $0.0 < $1.0 }

for (_, sum) in result {
    resultStr += "\(sum)\n"
}
resultStr.removeLast()

print(resultStr)
*/
