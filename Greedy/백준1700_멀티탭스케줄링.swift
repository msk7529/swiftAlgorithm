//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/17.
//
/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], K = line[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var multiTapState: [Int] = []   // 현재 멀티탭에 꼽혀있는 전기용품 이름
var result: Int = 0

for i in 0..<K {
    let curr = arr[i]
    
    if multiTapState.contains(curr) {
        // 전기용품이 이미 멀티탭에 꼽혀있으면 패스
        continue
    } else if multiTapState.count < N {
        // 멀티탭에 빈 자리가 있는 경우 멀티탭에 꼽아준다.
        multiTapState.append(curr)
    } else {
        // 멀티탭에 꼽혀있는 전기용품중 앞으로 사용되지 않는 것이 있다면 그걸 빼고 curr을 꼽아준다.
        // 멀티탭에 꼽혀있는 전기용품들이 모두 앞으로 사용될 것들이라면, 처음 사용되는 순서가 가장 늦은 것을 빼고 curr을 꼽아준다.
        var lastIndex = -1
        var target = 0
        
        for num in multiTapState {
            if let index = arr[i+1..<K].firstIndex(where: { $0 == num }) {
                if index > lastIndex {
                    lastIndex = index
                    target = num
                }
            } else {
                target = num
                break
            }
        }
        
        if let index = multiTapState.firstIndex(where: { $0 == target }) {
            result += 1
            multiTapState[index] = curr
        }
    }
}

print(result)
*/
