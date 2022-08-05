//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/20.
//
/*
struct Coordinate: Equatable {
    var x: Int
    var y: Int
}
var gameBoard: [[Int]] = []
var puzzleBoard: [[Int]] = []
var N: Int = 0
var visited: [[Bool]] = []
var emptySpace: [[Coordinate]] = []     //  연속된 빈 공간의 좌표들을 저장하는 배열
var puzzleSlice: [[Coordinate]] = []    //  연속된 퍼즐조각의 좌표들을 저장하는 배열
let dir: [(Int, Int)] = [(0, 1), (0, -1), (1, 0), (-1, 0)]
var result: Int = 0

func solution(_ game_board: [[Int]], _ table: [[Int]]) -> Int {
    gameBoard = game_board
    puzzleBoard = table
    N = gameBoard.count
    result = 0
    
    findEmptySpaceInGameBoard()
    moveEmptySpacesToZero()
    findPuzzleInPuzzleBoard()
    movePuzzleSliceToZero()
    
    for space in emptySpace {
        loop: for i in 0..<puzzleSlice.count where puzzleSlice[i].count == space.count {
            var tmp = puzzleSlice[i]
                        
            for _ in 0...3 {
                // 현재 탐색중인 빈 공간에 퍼즐을 총 4번 회전시켜보면서, 공간과 조각의 좌표가 일치하는지 확인한다.
                tmp = rotateSlice(tmp)
                
                if tmp == space {
                    result += space.count
                    puzzleSlice.remove(at: i)   // 일치하면 해당 퍼즐조각은 제거한다.
                    break loop
                }
            }
        }
    }
    
    return result
}

func findEmptySpaceInGameBoard() {
    // 게임보드에서 연속된 빈공간들의 좌표를 찾는다.
    visited = Array(repeating: Array(repeating: false, count: N), count: N)

    func dfs(_ y: Int, _ x: Int) -> [Coordinate] {
        var result: [Coordinate] = []
        
        visited[y][x] = true
        result.append(Coordinate(x: x, y: y))
        
        for currDir in dir {
            let nextY = y + currDir.0
            let nextX = x + currDir.1
            
            if isValid(nextY, nextX) && !visited[nextY][nextX] && gameBoard[nextY][nextX] == 0 {
                result.append(contentsOf: dfs(nextY, nextX))
            }
        }
        return result
    }
    
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] && gameBoard[i][j] == 0 {
                emptySpace.append(dfs(i, j))
            }
        }
    }
}

func moveEmptySpacesToZero() {
    // 빈 공간의 좌표들을 원점을 기준으로 이동시킨다.
    var temp: [[Coordinate]] = []
    
    for i in 0..<emptySpace.count {
        let minY = emptySpace[i].map { $0.y }.min()!
        let minX = emptySpace[i].map { $0.x }.min()!
        var curr: [Coordinate] = []
        
        for space in emptySpace[i] {
            curr.append(Coordinate(x: space.x - minX, y: space.y - minY))
        }
        
        curr.sort { $0.y == $1.y ? $0.x < $1.x : $0.y < $1.y }  // 퍼즐과 매칭시 보다 효율적으로 확인하기 위해 정렬
        temp.append(curr)
    }
    emptySpace = temp
}

func findPuzzleInPuzzleBoard() {
    // table에서 연속된 퍼즐조각들의 좌표를 찾는다.
    visited = Array(repeating: Array(repeating: false, count: N), count: N)

    func dfs(_ y: Int, _ x: Int) -> [Coordinate] {
        var result: [Coordinate] = []
        
        visited[y][x] = true
        result.append(Coordinate(x: x, y: y))
        
        for currDir in dir {
            let nextY = y + currDir.0
            let nextX = x + currDir.1
            
            if isValid(nextY, nextX) && !visited[nextY][nextX] && puzzleBoard[nextY][nextX] == 1 {
                result.append(contentsOf: dfs(nextY, nextX))
            }
        }
        return result
    }
    
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] && puzzleBoard[i][j] == 1 {
                puzzleSlice.append(dfs(i, j))
            }
        }
    }
}

func movePuzzleSliceToZero() {
    // 퍼즐의 좌표들을 원점을 기준으로 이동시킨다. sort는 rotate시에 진행
    var temp: [[Coordinate]] = []
    
    for i in 0..<puzzleSlice.count {
        let minY = puzzleSlice[i].map { $0.y }.min()!
        let minX = puzzleSlice[i].map { $0.x }.min()!
        var curr: [Coordinate] = []
        
        for space in puzzleSlice[i] {
            curr.append(Coordinate(x: space.x - minX, y: space.y - minY))
        }
        temp.append(curr)
    }
    puzzleSlice = temp
}

func rotateSlice(_ space: [Coordinate]) -> [Coordinate] {
    // 주어진 좌표들로 A*A 배열을 구성하여 시계방향으로 90도 회전하고 다시 좌표값들을 반환한다.
    let spaceY = space.map { $0.y }
    let spaceX = space.map { $0.x }
    let len1 = spaceY.max()! - spaceY.min()! + 1
    let len2 = spaceX.max()! - spaceX.min()! + 1
    let len = max(len1, len2)
    var arr = Array(repeating: Array(repeating: 0, count: len), count: len)
    var rotatedArr = Array(repeating: Array(repeating: 0, count: len), count: len)
    var ret: [Coordinate] = []
    
    // 좌표 회전을 위해 주어진 좌표들로 배열을 만들고, 좌표가 있는곳엔 1을 마킹한다.
    for curr in space {
        arr[curr.y][curr.x] = 1
    }
    
    // 배열을 시계방향으로 90도 회전
    for i in 0..<len {
        for j in 0..<len {
            rotatedArr[i][j] = arr[len - 1 - j][i]
        }
    }
    
    // 회전된 배열로 다시 좌표를 구한다.
    for i in 0..<len {
        for j in 0..<len {
            if rotatedArr[i][j] == 1 {
                ret.append(Coordinate(x: j, y: i))
            }
        }
    }
    
    // 배열 회전시에 원점을 기준으로 이동시킨 좌표가 틀어지는 경우가 발생할 수 있으므로 재조정 후 정렬을 수행 ex) 긴 ㄴ자 모양
    let minY = ret.map { $0.y }.min()!
    let minX = ret.map { $0.x }.min()!
    
    return ret.map { Coordinate(x: $0.x - minX, y: $0.y - minY) }.sorted { $0.y == $1.y ? $0.x < $1.x : $0.y < $1.y }
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= N || x < 0 || x >= N {
        return false
    }
    return true
}

//print(solution([[1,1,0,0,1,0],[0,0,1,0,1,0],[0,1,1,0,0,1],[1,1,0,1,1,1],[1,0,0,0,1,0],[0,1,1,1,0,0]], [[1,0,0,1,1,0],[1,0,1,0,1,0],[0,1,1,0,1,1],[0,0,1,0,0,0],[1,1,0,1,1,0],[0,1,0,0,0,0]]))
//print(solution([[0,0,0],[1,1,0],[1,1,1]], [[1,1,1],[1,0,0],[0,0,0]]))
//print(solution([[0,1,1],[1,0,1],[1,1,0]], [[1,0,0],[0,0,0],[0,0,0]]))
*/
