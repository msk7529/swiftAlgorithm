//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/02.
//
/*
struct BlockInfo {
    var red: (Int, Int)
    var blue: (Int, Int)
    var currGraph: [[Character]]
}

var N: Int = 0
var M: Int = 0
var graph: [[Character]] = []
var visited: [[[[Bool]]]] = []
var emptyBlock: (Int, Int) = (0, 0)
var bluePosition: (Int, Int) = (0, 0)
var redPosition: (Int, Int) = (0, 0)
var result: Int = 0
var queue: Queue<BlockInfo> = .init()

input()

func input() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    N = input[0]
    M = input[1]
    graph = Array(repeating: Array(repeating: "#", count: M), count: N)
    visited = Array(repeating: Array(repeating: Array(repeating: Array(repeating: false, count: 10), count: 10), count: 10), count: 10)
    
    for i in 0..<N {
        let line = readLine()!.map { Character(String($0)) }
        graph[i] = line
        for j in 0..<M {
            if graph[i][j] == "O" {
                emptyBlock = (i, j)
            } else if graph[i][j] == "B" {
                bluePosition = (i, j)
            } else if graph[i][j] == "R" {
                redPosition = (i, j)
            }
        }
    }
    visited[redPosition.0][redPosition.1][bluePosition.0][bluePosition.1] = true
    queue.enqueue(BlockInfo(red: redPosition, blue: bluePosition, currGraph: graph))
    
    print(bfs())
}

func bfs() -> Int {
    var num: Int = 0
    while !queue.isEmpty {
        num += 1
        if num == 11 {
            return -1
        }
        
        for _ in 0..<queue.count {
            guard let curr = queue.dequeue() else { return -1 }
            
            let rightResultBlockState = goRight(block: curr)
            if rightResultBlockState.red == emptyBlock {
                if rightResultBlockState.blue != emptyBlock {
                    return num
                }
            } else {
                if !visited[rightResultBlockState.red.0][rightResultBlockState.red.1][rightResultBlockState.blue.0][rightResultBlockState.blue.1] {
                    visited[rightResultBlockState.red.0][rightResultBlockState.red.1][rightResultBlockState.blue.0][rightResultBlockState.blue.1] = true
                    if rightResultBlockState.blue != emptyBlock {
                        queue.enqueue(rightResultBlockState)
                    }
                }
            }
            
            let leftResultBlockState = goLeft(block: curr)
            if leftResultBlockState.red == emptyBlock {
                if leftResultBlockState.blue != emptyBlock {
                    return num
                }
            } else {
                if !visited[leftResultBlockState.red.0][leftResultBlockState.red.1][leftResultBlockState.blue.0][leftResultBlockState.blue.1] {
                    visited[leftResultBlockState.red.0][leftResultBlockState.red.1][leftResultBlockState.blue.0][leftResultBlockState.blue.1] = true
                    if leftResultBlockState.blue != emptyBlock {
                        queue.enqueue(leftResultBlockState)
                    }
                }
            }
            
            let downResultBlockState = goDown(block: curr)
            if downResultBlockState.red == emptyBlock {
                if downResultBlockState.blue != emptyBlock {
                    return num
                }
            } else {
                if !visited[downResultBlockState.red.0][downResultBlockState.red.1][downResultBlockState.blue.0][downResultBlockState.blue.1] {
                    visited[downResultBlockState.red.0][downResultBlockState.red.1][downResultBlockState.blue.0][downResultBlockState.blue.1] = true
                    if downResultBlockState.blue != emptyBlock {
                        queue.enqueue(downResultBlockState)
                    }
                }
            }
            
            let upResultBlockState = goUp(block: curr)
            if upResultBlockState.red == emptyBlock {
                if upResultBlockState.blue != emptyBlock {
                    return num
                }
            } else {
                if !visited[upResultBlockState.red.0][upResultBlockState.red.1][upResultBlockState.blue.0][upResultBlockState.blue.1] {
                    visited[upResultBlockState.red.0][upResultBlockState.red.1][upResultBlockState.blue.0][upResultBlockState.blue.1] = true
                    if upResultBlockState.blue != emptyBlock {
                        queue.enqueue(upResultBlockState)
                    }
                }
            }
        }
    }
    
    return -1
}

func goRight(block: BlockInfo) -> BlockInfo {
    var bluePosition = block.blue
    var redPosition = block.red
    var currGraph = block.currGraph

    if block.blue.0 != block.red.0 {
        for j in block.blue.1..<M-1 {
            if currGraph[block.blue.0][j] == "." {
                bluePosition = (block.blue.0, j)
            } else if currGraph[block.blue.0][j] == "#" {
                break
            } else if currGraph[block.blue.0][j] == "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                bluePosition = (block.blue.0, j)
                break
            }
        }
        if currGraph[bluePosition.0][bluePosition.1] != "O" {
            currGraph[block.blue.0][block.blue.1] = "."
            currGraph[bluePosition.0][bluePosition.1] = "B"
        }
        
        for j in block.red.1..<M-1 {
            if currGraph[block.red.0][j] == "." {
                redPosition = (block.red.0, j)
            } else if currGraph[block.red.0][j] == "#" {
                break
            } else if currGraph[block.red.0][j] == "O" {
                currGraph[block.red.0][block.red.1] = "."
                redPosition = (block.red.0, j)
                break
            }
        }
        if currGraph[redPosition.0][redPosition.1] != "O" {
            currGraph[block.red.0][block.red.1] = "."
            currGraph[redPosition.0][redPosition.1] = "R"
        }
        
        return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
    } else {
        if block.blue.1 > block.red.1 {
            // 파란구슬이 빨간구슬보다 오른쪽에 있는 경우
            for j in block.blue.1..<M-1 {
                if currGraph[block.blue.0][j] == "." {
                    bluePosition = (block.blue.0, j)
                } else if currGraph[block.blue.0][j] == "#" {
                    break
                } else if currGraph[block.blue.0][j] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (block.blue.0, j)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            for j in block.red.1..<M-1 {
                if currGraph[block.red.0][j] == "." {
                    redPosition = (block.red.0, j)
                } else if currGraph[block.red.0][j] == "#" || currGraph[block.red.0][j] == "B" {
                    break
                } else if currGraph[block.red.0][j] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (block.red.0, j)
                    break
                }
            }
            
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        } else {
            // 빨간구슬이 파란구슬보다 오른쪽에 있는 경우
            for j in block.red.1..<M-1 {
                if currGraph[block.red.0][j] == "." {
                    redPosition = (block.red.0, j)
                } else if currGraph[block.red.0][j] == "#" {
                    break
                } else if currGraph[block.red.0][j] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (block.red.0, j)
                    break
                }
            }
            
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            for j in block.blue.1..<M-1 {
                if currGraph[block.blue.0][j] == "." {
                    bluePosition = (block.blue.0, j)
                } else if currGraph[block.blue.0][j] == "#" || currGraph[block.blue.0][j] == "R" {
                    break
                } else if currGraph[block.blue.0][j] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (block.blue.0, j)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        }
    }
}

func goLeft(block: BlockInfo) -> BlockInfo {
    var bluePosition = block.blue
    var redPosition = block.red
    var currGraph = block.currGraph

    if block.blue.0 != block.red.0 {
        for j in stride(from: block.blue.1, to: 0, by: -1) {
            if currGraph[block.blue.0][j] == "." {
                bluePosition = (block.blue.0, j)
            } else if currGraph[block.blue.0][j] == "#" {
                break
            } else if currGraph[block.blue.0][j] == "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                bluePosition = (block.blue.0, j)
                break
            }
        }
        if currGraph[bluePosition.0][bluePosition.1] != "O" {
            currGraph[block.blue.0][block.blue.1] = "."
            currGraph[bluePosition.0][bluePosition.1] = "B"
        }
        
        for j in stride(from: block.red.1, to: 0, by: -1) {
            if currGraph[block.red.0][j] == "." {
                redPosition = (block.red.0, j)
            } else if currGraph[block.red.0][j] == "#" {
                break
            } else if currGraph[block.red.0][j] == "O" {
                currGraph[block.red.0][block.red.1] = "."
                redPosition = (block.red.0, j)
                break
            }
        }
        if currGraph[redPosition.0][redPosition.1] != "O" {
            currGraph[block.red.0][block.red.1] = "."
            currGraph[redPosition.0][redPosition.1] = "R"
        }
        
        return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
    } else {
        if block.blue.1 > block.red.1 {
            // 파란구슬이 빨간구슬보다 오른쪽에 있는 경우
            for j in stride(from: block.red.1, to: 0, by: -1) {
                if currGraph[block.red.0][j] == "." {
                    redPosition = (block.red.0, j)
                } else if currGraph[block.red.0][j] == "#" {
                    break
                } else if currGraph[block.red.0][j] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (block.red.0, j)
                    break
                }
            }
            
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            for j in stride(from: block.blue.1, to: 0, by: -1) {
                if currGraph[block.blue.0][j] == "." {
                    bluePosition = (block.blue.0, j)
                } else if currGraph[block.blue.0][j] == "#" || currGraph[block.blue.0][j] == "R" {
                    break
                } else if currGraph[block.blue.0][j] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (block.blue.0, j)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        } else {
            // 빨간구슬이 파란구슬보다 오른쪽에 있는 경우
            for j in stride(from: block.blue.1, to: 0, by: -1) {
                if currGraph[block.blue.0][j] == "." {
                    bluePosition = (block.blue.0, j)
                } else if currGraph[block.blue.0][j] == "#" {
                    break
                } else if currGraph[block.blue.0][j] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (block.blue.0, j)
                    break
                }
            }
            
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            for j in stride(from: block.red.1, to: 0, by: -1) {
                if currGraph[block.red.0][j] == "." {
                    redPosition = (block.red.0, j)
                } else if currGraph[block.red.0][j] == "#" || currGraph[block.red.0][j] == "B" {
                    break
                } else if currGraph[block.red.0][j] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (block.red.0, j)
                    break
                }
            }
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        }
    }
}

func goDown(block: BlockInfo) -> BlockInfo {
    var bluePosition = block.blue
    var redPosition = block.red
    var currGraph = block.currGraph

    if block.blue.1 != block.red.1 {
        for i in block.blue.0..<N-1 {
            if currGraph[i][block.blue.1] == "." {
                bluePosition = (i, block.blue.1)
            } else if currGraph[i][block.blue.1] == "#" {
                break
            } else if currGraph[i][block.blue.1] == "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                bluePosition = (i, block.blue.1)
                break
            }
        }
        if currGraph[bluePosition.0][bluePosition.1] != "O" {
            currGraph[block.blue.0][block.blue.1] = "."
            currGraph[bluePosition.0][bluePosition.1] = "B"
        }
        
        for i in block.red.0..<N-1 {
            if currGraph[i][block.red.1] == "." {
                redPosition = (i, block.red.1)
            } else if currGraph[i][block.red.1] == "#" {
                break
            } else if currGraph[i][block.red.1] == "O" {
                currGraph[block.red.0][block.red.1] = "."
                redPosition = (i, block.red.1)
                break
            }
        }
        if currGraph[redPosition.0][redPosition.1] != "O" {
            currGraph[block.red.0][block.red.1] = "."
            currGraph[redPosition.0][redPosition.1] = "R"
        }
        
        return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
    } else {
        if block.blue.0 > block.red.0 {
            // 파란구슬이 빨간구슬보다 아래쪽에 있는 경우
            for i in block.blue.0..<N-1 {
                if currGraph[i][block.blue.1] == "." {
                    bluePosition = (i, block.blue.1)
                } else if currGraph[i][block.blue.1] == "#" {
                    break
                } else if currGraph[i][block.blue.1] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (i, block.blue.1)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            for i in block.red.0..<N-1 {
                if currGraph[i][block.red.1] == "." {
                    redPosition = (i, block.red.1)
                } else if currGraph[i][block.red.1] == "#" || currGraph[i][block.red.1] == "B" {
                    break
                } else if currGraph[i][block.red.1] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (i, block.red.1)
                    break
                }
            }
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        } else {
            // 빨간구슬이 파란구슬보다 아래쪽에 있는 경우
            for i in block.red.0..<N-1 {
                if currGraph[i][block.red.1] == "." {
                    redPosition = (i, block.red.1)
                } else if currGraph[i][block.red.1] == "#" {
                    break
                } else if currGraph[i][block.red.1] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (i, block.red.1)
                    break
                }
            }
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            for i in block.blue.0..<N-1 {
                if currGraph[i][block.blue.1] == "." {
                    bluePosition = (i, block.blue.1)
                } else if currGraph[i][block.blue.1] == "#" || currGraph[i][block.red.1] == "R" {
                    break
                } else if currGraph[i][block.blue.1] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (i, block.blue.1)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        }
    }
}

func goUp(block: BlockInfo) -> BlockInfo {
    var bluePosition = block.blue
    var redPosition = block.red
    var currGraph = block.currGraph

    if block.blue.1 != block.red.1 {
        for i in stride(from: block.blue.0, to: 0, by: -1) {
            if currGraph[i][block.blue.1] == "." {
                bluePosition = (i, block.blue.1)
            } else if currGraph[i][block.blue.1] == "#" {
                break
            } else if currGraph[i][block.blue.1] == "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                bluePosition = (i, block.blue.1)
                break
            }
        }
        if currGraph[bluePosition.0][bluePosition.1] != "O" {
            currGraph[block.blue.0][block.blue.1] = "."
            currGraph[bluePosition.0][bluePosition.1] = "B"
        }
        
        for i in stride(from: block.red.0, to: 0, by: -1) {
            if currGraph[i][block.red.1] == "." {
                redPosition = (i, block.red.1)
            } else if currGraph[i][block.red.1] == "#" {
                break
            } else if currGraph[i][block.red.1] == "O" {
                currGraph[block.red.0][block.red.1] = "."
                redPosition = (i, block.red.1)
                break
            }
        }
        if currGraph[redPosition.0][redPosition.1] != "O" {
            currGraph[block.red.0][block.red.1] = "."
            currGraph[redPosition.0][redPosition.1] = "R"
        }
        
        return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
    } else {
        if block.blue.0 < block.red.0 {
            // 파란구슬이 빨간구슬보다 위쪽에 있는 경우
            for i in stride(from: block.blue.0, to: 0, by: -1) {
                if currGraph[i][block.blue.1] == "." {
                    bluePosition = (i, block.blue.1)
                } else if currGraph[i][block.blue.1] == "#" {
                    break
                } else if currGraph[i][block.blue.1] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (i, block.blue.1)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            for i in stride(from: block.red.0, to: 0, by: -1) {
                if currGraph[i][block.red.1] == "." {
                    redPosition = (i, block.red.1)
                } else if currGraph[i][block.red.1] == "#" || currGraph[i][block.red.1] == "B" {
                    break
                } else if currGraph[i][block.red.1] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (i, block.red.1)
                    break
                }
            }
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        } else {
            // 빨간구슬이 파란구슬보다 위쪽에 있는 경우
            for i in stride(from: block.red.0, to: 0, by: -1) {
                if currGraph[i][block.red.1] == "." {
                    redPosition = (i, block.red.1)
                } else if currGraph[i][block.red.1] == "#" {
                    break
                } else if currGraph[i][block.red.1] == "O" {
                    currGraph[block.red.0][block.red.1] = "."
                    redPosition = (i, block.red.1)
                    break
                }
            }
            if currGraph[redPosition.0][redPosition.1] != "O" {
                currGraph[block.red.0][block.red.1] = "."
                currGraph[redPosition.0][redPosition.1] = "R"
            }
            
            for i in stride(from: block.blue.0, to: 0, by: -1) {
                if currGraph[i][block.blue.1] == "." {
                    bluePosition = (i, block.blue.1)
                } else if currGraph[i][block.blue.1] == "#" || currGraph[i][block.red.1] == "R" {
                    break
                } else if currGraph[i][block.blue.1] == "O" {
                    currGraph[block.blue.0][block.blue.1] = "."
                    bluePosition = (i, block.blue.1)
                    break
                }
            }
            if currGraph[bluePosition.0][bluePosition.1] != "O" {
                currGraph[block.blue.0][block.blue.1] = "."
                currGraph[bluePosition.0][bluePosition.1] = "B"
            }
            
            return BlockInfo(red: redPosition, blue: bluePosition, currGraph: currGraph)
        }
    }
}
*/
