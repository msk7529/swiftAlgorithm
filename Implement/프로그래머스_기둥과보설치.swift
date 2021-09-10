//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/11.
//
/*
// 문제가 좀 애매한 듯.. 기둥조건에서 "보의 한쪽 끝 부분 위에 있거나" 이게 연속된 보의 경우 양쪽 끝에만 기둥이 존재할 수 있는것으로 이해했는데 그게 아니라 보가 하나 있으면 그 양끝점에 기둥을 설치할 수 있다는 의미였음.
struct Building: Hashable {
    let x: Int
    let y: Int
    let type: Int   // 0이면 기둥, 1이면 보
}

var set: Set<Building> = .init()

func solution(_ n: Int, _ build_frame: [[Int]]) -> [[Int]] {
    
    for build in build_frame {
        let x = build[0], y = build[1], type = build[2], command = build[3]
        let curr = Building(x: x, y: y, type: type)
        
        // 일단 커맨드를 실행해보고, 유효성을 판단하여 유효하지 않으면 롤백한다.
        if command == 0 {
            set.remove(curr)
            
            if !isVaild() { set.insert(curr) }
        } else {
            set.insert(curr)
            
            if !isVaild() { set.remove(curr) }
        }
    }
    
    return Array(set).sorted {
        if $0.x == $1.x {
            if $0.y == $1.y {
                return $0.type < $1.type
            }
            return $0.y < $1.y
        }
        return $0.x < $1.x
    }.map { [$0.x, $0.y, $0.type] }
}

func isVaild() -> Bool {
    loop: for building in set {
        if building.type == 0 {
            // 기둥이 유효한지 판단
            let x = building.x, y = building.y
            
            if y == 0 { continue }
            
            let vaildGidungCondition = [Building(x: x - 1, y: y, type: 1), Building(x: x, y: y, type: 1), Building(x: x, y: y - 1, type: 0)]
            
            for condition in vaildGidungCondition {
                if set.contains(condition) {
                    continue loop
                }
            }
            return false
        } else {
            // 보가 유효한지 판단
            let x = building.x, y = building.y
            
            let validBoCondition = [Building(x: x, y: y - 1, type: 0), Building(x: x + 1, y: y - 1, type: 0), Building(x: x - 1, y: y, type: 1), Building(x: x + 1, y: y, type: 1)]
            
            for i in 0..<3 {
                if i == 2 {
                    if set.contains(validBoCondition[2]) && set.contains(validBoCondition[3]) {
                        continue loop
                    }
                } else {
                    if set.contains(validBoCondition[i]) {
                        continue loop
                    }
                }
            }
            return false
        }
    }
    return true
}

solution(5, [[1,0,0,1],[1,1,1,1],[2,1,0,1],[2,2,1,1],[5,0,0,1],[5,1,0,1],[4,2,1,1],[3,2,1,1]])
solution(5, [[0,0,0,1],[2,0,0,1],[4,0,0,1],[0,1,1,1],[1,1,1,1],[2,1,1,1],[3,1,1,1],[2,0,0,0],[1,1,1,0],[2,2,0,1]])
*/
