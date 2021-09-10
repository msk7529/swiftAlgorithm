//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/10.
//
/*
var emptyHoleCountOfLock: Int = 0
var emptyHolePos: [(Int, Int)] = []     // 자물쇠의 빈 공간의 좌표를 저장
var N: Int = 0
var M: Int = 0

func solution(_ key: [[Int]], _ lock: [[Int]]) -> Bool {
    N = lock.count
    M = key.count
    var rotatedKey = key
    
    for i in 0..<N {
        for j in 0..<N {
            if lock[i][j] == 0 {
                emptyHoleCountOfLock += 1
                emptyHolePos.append((i, j))
            }
        }
    }
    
    for _ in 0..<4 {
        var dolgiPosOfKey: [(Int, Int)] = []
        rotatedKey = rotateArray(arr: rotatedKey)   // 키배열을 반시계 방향으로 회전시킨다.
        
        for i in 0..<M {
            for j in 0..<M {
                if rotatedKey[i][j] == 1 {
                    dolgiPosOfKey.append((i, j))    // 회전된 키배열에서 돌기의 좌표를 저장한다.
                }
            }
        }
        
        // 돌기의 좌표를 y, x 방향으로 i, j씩 증가시켜보면서 좌물쇠의 빈 공간과 매칭시킨다.
        for i in -N+1..<N {
            for j in -N+1..<N {
                var rightCount: Int = 0
                var movedDolgiPosKey = dolgiPosOfKey
                var isSuccess: Bool = true
                
                for k in 0..<dolgiPosOfKey.count {
                    // 좌표를 증가시킨다.
                    movedDolgiPosKey[k].0 += i
                    movedDolgiPosKey[k].1 += j
                }
                
                for k in movedDolgiPosKey {
                    if k.0 < 0 || k.0 >= N || k.1 < 0 || k.1 >= N { continue }  // 범위 밖은 고려하지 않는다.
                    
                    if lock[k.0][k.1] == 1 {
                        // 키 돌기와 자물쇠의 돌기가 만나면 실패처리
                        isSuccess = false
                        break
                    } else if lock[k.0][k.1] == 0 {
                        rightCount += 1
                    }
                }
                
                if isSuccess && rightCount == emptyHoleCountOfLock { return true }
            }
        }
    }
    return false
}

print(solution([[0, 0, 0], [1, 0, 0], [0, 1, 1]], [[1, 1, 1], [1, 1, 0], [1, 0, 1]]))
*/
