//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/16.
//
/*
// https://aerocode.net/392
// 현재 닫힌구간 [1,N]을 측정할 수 있는 상태에서 무게 M인 무게추가 더 주어지면, 기존에 측정할 수 있었던 무게 + M을 측정할 수 있으므로, [1+M, N+M]을 추가로 측정할 수 있다.
// [1, N]과 [1+M, N+M]이 연결되어 있다면 결국 [1,N+M]으로 구간을 확장할 수 있게되고, 연결되어있지 않다면, 측정할 수 없는 최소값은 N+1이 된다.
// 수직선을 그려서 이해해보자 ..
let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
arr.sort()

if N == 1 {
    print(arr[0] == 1 ? "2" : "1")
} else if arr[0] != 1 {
    print("1")
} else {
    var sum = arr[0]
    var isFinished = false

    for i in 1..<N {
        if sum + 1 < arr[i] {
            print(sum + 1)
            isFinished = true
            break
        }
        sum += arr[i]
    }
    
    if !isFinished {
        print(sum + 1)
    }
}
*/
