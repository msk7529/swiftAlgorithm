//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/19.
//
/*
func solution(_ n: Int, _ k: Int, _ cmds: [String]) -> String {
    var isDeleted: [Bool] = Array(repeating: false, count: n)   // isDeleted[i] : i행이 삭제되었으면 true
    var upperRow: [Int] = Array(-1...n-1)   // upperRow[i]: i행의 바로 위쪽의 삭제되지 않은 행번호
    var downRow: [Int] = Array(1...n)   // downRow[i]: i행의 바로 아래쪽의 삭제되지 않은 행번호
    var deletedRows: [Int] = []     // 삭제된 행번호
    var curr: Int = k   // 현재 선택된 행번호
    
    for cmd in cmds {
        let command = cmd.split(separator: " ").map { String($0) }
        
        if command[0] == "U" {
            for _ in 0..<Int(command[1])! {
                curr = upperRow[curr]
            }
        } else if command[0] == "D" {
            for _ in 0..<Int(command[1])! {
                curr = downRow[curr]
            }
        } else if command[0] == "C" {
            isDeleted[curr] = true
            deletedRows.append(curr)
            
            if upperRow[curr] != -1 {
                // 삭제된 행의 바로 위쪽 행의 downRow를 삭제된 행의 downRow로 바꿔준다.
                downRow[upperRow[curr]] = downRow[curr]
            }
            
            if downRow[curr] != n {
                // 삭제된 행의 바로 아래쪽 행의 upperRow를 삭제된 행의 upperRow로 바꿔준다.
                upperRow[downRow[curr]] = upperRow[curr]
            }
            
            if downRow[curr] == n {
                // 마지막 행인 경우
                curr = upperRow[curr]
            } else {
                curr = downRow[curr]
            }
        } else if command[0] == "Z" {
            let target: Int = deletedRows.removeLast()
            isDeleted[target] = false
            
            if upperRow[target] != -1 {
                // 복구된 행의 바로 위쪽 행의 downRow를 복구된 행으로 바꿔준다.
                downRow[upperRow[target]] = target
            }
            if downRow[target] != n {
                // 복구된 행의 바로 아래쪽 행의 upperRow를 복구된 행으로 바꿔준다.
                upperRow[downRow[target]] = target
            }
        }
        
    }
    
    let result = isDeleted.map { $0 ? "X" : "O" }
    return result.joined()
}

print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]))
*/
