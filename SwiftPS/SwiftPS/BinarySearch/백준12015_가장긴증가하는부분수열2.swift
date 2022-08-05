//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
/*
/*
LIS를 이분탐색으로 푸는 방법. DP를 이용한 방법은 O(N^2)인 반면, O(NlogN)에 해결할 수 있다.
그리디적인 요소가 들어가는데, "수열의 마지막 수가 작을수록 더 긴 LIS를 만드는데 유리하다"
참고: https://jason9319.tistory.com/113
*/

let N: Int = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
var list: [Int] = [arr[0]]

for curr in arr {
    if list.last! < curr {
        // list에서 가장 큰 값보다 현재 탐색중인 값이 크면 list 맨 뒤에 붙인다.
        list.append(curr)
    } else {
        // 그렇지 않으면, lowerBound로 서치하여 값을 갱신한다.
        let idx = list.lowerBound(value: curr)
        list[idx] = curr
    }
}

print(list.count)
// list에 들어있는 값들은 LIS를 이루는 요소와는 무관하다.
*/
