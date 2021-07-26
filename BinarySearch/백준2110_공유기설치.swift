//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N: Int = line[0]
let C: Int = line[1]
var house: [Int] = []

for _ in 0..<N {
    house.append(Int(readLine()!)!)
}
house.sort()

var minWidth: Int = 1   // 공유기 사이의 최소간격은 1
var maxWidth: Int = house.last! - house.first!  // 공유기 사이의 최대거리는 처음집과 마지막집 사이의 거리

while maxWidth >= minWidth {
    let mid = (minWidth + maxWidth) / 2     // 현재 탐색할 인접공유기 사이의 거리. 즉, 이번 단계에서는 mid간격으로 공유기를 설치해보자.
    var count: Int = 1      // 공유기를 최대한으로 설치하기 위해서는 첫번째 집에 무조건 공유기를 놓는것이 유리하다.
    var prevIdx: Int = 0
    
    for i in 1..<house.count {
        if house[i] - house[prevIdx] >= mid {
            // 집 간격이 공유기 거리보다 크면 공유기를 설치할 수 있다.
            count += 1
            prevIdx = i
        }
    }
    
    if count >= C {
        // C개 이상의 공유기를 설치할 수 있는 경우, 간격을 더 늘려본다.
        minWidth = mid + 1
    } else {
        // C개 미만의 공유기를 설치할 수 있는 경우, 공유기를 더 설치하기 위해 간격을 줄여본다.
        maxWidth = mid - 1
    }
}

print(maxWidth)
*/
