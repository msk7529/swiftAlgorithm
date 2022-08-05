//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/08/01

/*
 그리디 전략을 잘못 세워서 오답. 멀티탭에 꽂혀있는 물건들 중 미래에 사용될 횟수가 가장 작은 것을 빼는 것으로 했었는데 이렇게 하면 처음과 끝 부분에 특정 물건이 몰려있으면 오래 멀티탭을 점유하고 있어 최적의 해가 나오지 못함
 미래에 사용되지 않거나(1순위), 사용이 가장 늦게 되는 물건을 멀티탭에서 빼주어야 함.
 */

/*
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], K = line[1]
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var thingsOfTap: [Int] = []
var result: Int = 0

for (index, thing) in arr.enumerated() {
    if thingsOfTap.contains(thing) {
        // 이걸 먼저 안 써주면 2 2 2 3 4 5... 이렇게 입력이 들어올 때 탭에 계속 끼워넣게됨
        continue
    } else if thingsOfTap.count < N {
        thingsOfTap.append(thing)
    } else if !thingsOfTap.contains(thing) {
        var lastIndex = -1
        var target = -1
        
        for curr in thingsOfTap {
            if let index = arr[index+1..<K].firstIndex(where: { $0 == curr }) {
                if index > lastIndex {
                    lastIndex = index
                    target = curr
                }
            } else {
                target = curr
                break
            }
        }
        
        if let tapIndex = thingsOfTap.firstIndex(where: { $0 == target }) {
            thingsOfTap[tapIndex] = thing
            result += 1
        }
    }
}

print(result)
*/
