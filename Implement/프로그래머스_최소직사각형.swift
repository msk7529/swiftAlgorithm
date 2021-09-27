//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/28.
//
/*
func solution(_ sizes: [[Int]]) -> Int {
    var maxNum: Int = 0
    var maxNum2: Int = 0
    var maxNumOfIndex: (Int, Int) = (0, 0)
    
    for i in 0..<sizes.count {
        for j in 0..<2 {
            if sizes[i][j] > maxNum {
                maxNum = sizes[i][j]
                maxNumOfIndex = (i, j)
            }
        }
    }
    maxNum2 = sizes[maxNumOfIndex.0][1 - maxNumOfIndex.1]
    
    for i in 0..<sizes.count {
        if i == maxNumOfIndex.0 { continue }
        
        if maxNum2 < sizes[i][1 - maxNumOfIndex.1] {
            maxNum2 = max(maxNum2, min(sizes[i][0], sizes[i][1]))
        }
    }
    
    return maxNum * maxNum2
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))
*/
