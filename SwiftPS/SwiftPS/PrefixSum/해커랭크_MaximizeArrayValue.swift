//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/08/23

/*
- 배열의 원소들을 최대한 평균치에 가깝게 해야 한다는건 쉽게 알 수 있었는데, 그 과정이 어려웠음
- 누적합을 잊고 풀다가 계속 타임아웃 나서 긴가민가 하면서 누적합으로 푸니까 풀림. 타임아웃 나는 부분을 최적화해서 이진탐색으로 풀어야 했는듯
- 개인적으로 어려워서 3번 이상의 체감 난이도.
*/

/*
import Foundation

func getMaximum(arr: [Int]) -> Int {
    var arr = arr
    var pSum = arr.reduce(0, +)
    var ret = 0
    
    for i in stride(from: arr.count - 1, through: 1, by: -1) {
        let _avg = Double(pSum) / Double(i + 1)
        let avg = Int(ceil(_avg))

        if arr[i] > avg {
            let diff = arr[i] - avg
            arr[i] = avg
            arr[i - 1] += diff
        }
        pSum -= arr[i]
        ret = max(ret, arr[i])
    }
    return max(ret, arr[0])
}

print(getMaximum(arr: [1, 5, 7, 6]))
print(getMaximum(arr: [5, 15, 19]))
print(getMaximum(arr: [10, 3, 5, 7]))
print(getMaximum(arr: [7, 5, 11, 5]))
*/
