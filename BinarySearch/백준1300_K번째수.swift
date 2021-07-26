//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/27.
//
/*
let N = Int(readLine()!)!
var k = Int(readLine()!)!

var left = 1
var right = N * N
var result = 0

while right >= left {
    let mid = (left + right) / 2
    var cnt = 0
    
    // 배열의 각 행은 1*1, 1*2, ... , 1*N
    //            2*1, 2*2, ... , 2*N
    //            i*1, i*2, ... , i*N 으로 표현할 수 있다.
    // 즉, i * j <= mid 을 만족하는 j의 개수를 카운팅해서 그 갯수가 k이상인지 확인한다. (j <= m/i)
    for i in 1...N {
        cnt += min(mid / i, N)
        // 여기서 주의할 점이, 각 행(1...N)에서 구해지는 cnt의 최대값은 N이다.
        // 그런데 N=1000일 경우, 첫 mid가 50만이 되는데 이러면 mid/i가 1000을 넘어갈 수 있으므로, min연산을 해주어야함.
    }
    
    if cnt >= k {
        // i * j <= mid를 만족하는 j의 개수가 k개 이상이면 상한값을 낮춰본다
        result = mid
        right = mid - 1
    } else {
        left = mid + 1
    }
}

print(result)
*/
