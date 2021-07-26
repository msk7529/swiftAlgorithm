//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
/*
적어도 M미터의 나무를 얻기위한 절단기의 최대 높이를 구하는 최적화 문제를,
절단기의 높이를 maxHeight로 정했을떄, M미터의 나무를 얻을 수 있는지 결정문제로 바꾼다.
이러한 문제유형을 파라메트릭 서치(Parametric Search)라고 한다.
파라메트릭 서치: 최적화문제(문제의 상황을 만족하는 특정 변수의 최솟값, 최댓값을 구하는 문제)를 결정문제로 바꾸어 푸는 것
*/
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = input[0]
let M: Int = input[1]
let tree: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var minHeight: Int = 0
var maxHeight: Int = tree.max()!

while maxHeight >= minHeight {
    let mid = (minHeight + maxHeight) / 2
    
    var total: Int = 0
    for currHeight in tree {
        if currHeight > mid {
            total += currHeight - mid
        }
    }
    
    if total >= M {
        minHeight = mid + 1
    } else {
        maxHeight = mid - 1
    }
}

print(maxHeight)
*/
