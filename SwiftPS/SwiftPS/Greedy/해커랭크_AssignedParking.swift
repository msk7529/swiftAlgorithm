//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/11/23

// 그리디인건 쉽게 알겠는데, 최적의 방법을 찾지 못했음. 솔루션 보고도 이해 불가 ..

/*
func minFuel(x: [Int], y: [Int]) -> Int {
    let cnt = x.count
    var x = x.sorted()
    let y = y.sorted()
    var result = 0
    
    for i in 0..<cnt {
        x[i] -= i   // 이걸 왜 해야하는거지..
    }
    x.sort()
    
    for i in 0..<cnt {
        result += abs(x[i] - x[cnt/2])
        result += abs(y[i] - y[cnt/2])
    }
    
    return result
}

print(minFuel(x: [4, 6, 4, -4, 1], y: [-1, 1, -5, -4, 5]))
print(minFuel(x: [1, 5], y: [1, 5]))
*/
