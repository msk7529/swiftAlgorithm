//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/05/26.

// 단순 배열 탐색문제. 난이도 1

/*
func toolchanger(tools: [String], startIndex: Int, target: String) -> Int {
    var result = Int.max
    var moveCnt = 0
    var currPos = startIndex
    
    while moveCnt < tools.count {
        if currPos < 0 {
            currPos = tools.count - 1
        } else if currPos == tools.count {
            currPos = 0
        }
        
        if tools[currPos] == target {
            result = min(result, moveCnt)
            break
        }
        currPos += 1
        moveCnt += 1
    }
    
    moveCnt = 0
    currPos = startIndex
    while moveCnt < tools.count {
        if currPos < 0 {
            currPos = tools.count - 1
        } else if currPos == tools.count {
            currPos = 0
        }
        
        if tools[currPos] == target {
            result = min(result, moveCnt)
            break
        }
        currPos -= 1
        moveCnt += 1
    }
    
    return result
}

print(toolchanger(tools: ["ballendmill", "facemill", "keywaycutter", "slotdrill"], startIndex: 1, target: "slotdrill"))
*/
