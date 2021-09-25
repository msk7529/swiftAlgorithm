//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/04.
//
/*
var sameCardsPos: [[(Int, Int)]] = Array(repeating: [], count: 7)   // sameCardsPos[i]: 카드번호가 i인 카드가 위치한 좌표 두개
var cardNumInBoard: [Int] = []  // 보드에 있는 카드 번호
var arr: [[Int]] = []   // 파라미터로 들어오는 board 백업용도
var permutationResult: [[Int]] = []     // 보드의 카드들을 방문하는 순서 ex) [[1, 2, 3], [2, 1, 3] ...]. 순열로 구현, N!개 존재
var sameCardsOrder: [[Int]] = []     // sameCardOrder[i]가 (0, 0, .., 0)이면 같은 숫자의 카드는 전부 sameCardsPos의 첫번째 부터 방문하고 두번째를 방문한다. sameCardOrder[i]의 개수는 cardNumInBoard의 개수, permutaionResult[i]의 개수와 같다. 2^N개 존재
var orderOfCards: [[(Int, Int)]] = []   // permutationResult와 sameCardsOrder을 조합하여 만들어낸 방문할 카드좌표의 순서. 총 (N! * 2^N)개 존재
var result: Int = .max
let dir: [(Int, Int)] = [(0, 1), (0, -1), (-1, 0), (1, 0)]

func solution(_ board: [[Int]], _ r: Int, _ c: Int) -> Int {
    arr = board
    
    calcSameCardPosition()  // 카드가 존재하는 곳의 좌표를 저장해둔다.
    calcPermutation(cardNumInBoard, cardNumInBoard.count - 1)   // 카드를 방문할 순서를 정한다.
    calcSameCardOrder([])   // 같은 카드에 대해서 방문할 순서를 정한다.
    calcOrderOfCards()  // 위 두 단계에서 구한 결과로 최종 카드 방문 순서를 구한다.
    
    
    for i in 0..<orderOfCards.count {
        let currOrderOfCards = orderOfCards[i]
        var moveCnt: Int = 0
        arr = board     // 뒤집은 카드는 0으로 바꿔줬으므로 매 for문 마다 리셋해주어야 함.
        
        for j in 0..<currOrderOfCards.count {
            var queue: Queue<(Int, Int, Int)> = .init()
            var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: 4), count: 4)
            
            if j == 0 {
                if r == currOrderOfCards[0].0 && c == currOrderOfCards[0].1 {
                    // 첫 위치에 카드가 존재하는 경우는 bfs를 수행하지 않고 바로 카드를 뒤집는다.
                    arr[r][c] = 0
                    moveCnt += 1
                    continue
                }
                queue.enqueue((r, c, 0))
                visited[r][c] = true
            } else {
                queue.enqueue((currOrderOfCards[j - 1].0, currOrderOfCards[j - 1].1, 0))
                visited[currOrderOfCards[j - 1].0][currOrderOfCards[j - 1].1] = true
            }
            
            loop: while !queue.isEmpty {
                let count = queue.count
                
                for _ in 0..<count {
                    let curr = queue.dequeue()!
                    let currY = curr.0, currX = curr.1, currMoveCnt = curr.2
                    let totalDir = dir + [(goCtrlUp(currY, currX), 0), (goCtrlDown(currY, currX), 0), (0, goCtrlRight(currY, currX)), (0, goCtrlLeft(currY, currX))]
                    
                    for nextDir in totalDir {
                        let nextY = currY + nextDir.0
                        let nextX = currX + nextDir.1
                        
                        if isValid(nextY, nextX) && !visited[nextY][nextX] {
                            if nextY == currOrderOfCards[j].0 && nextX == currOrderOfCards[j].1 {
                                arr[nextY][nextX] = 0
                                moveCnt += currMoveCnt + 1      // 이동 횟수
                                moveCnt += 1    // 뒤집는 횟수
                                break loop
                            } else {
                                visited[nextY][nextX] = true
                                queue.enqueue((nextY, nextX, currMoveCnt + 1))
                            }
                        }
                    }
                }
            }
        }
        result = min(result, moveCnt)
    }
    
    return result
}

func calcSameCardPosition() {
    for i in 0..<4 {
        for j in 0..<4 {
            if arr[i][j] > 0 {
                if !cardNumInBoard.contains(arr[i][j]) {
                    cardNumInBoard.append(arr[i][j])    // arr[i][j]가 Board에 있음을 셋팅
                }
                sameCardsPos[arr[i][j]].append((i, j))
            }
        }
    }
}

func calcPermutation(_ cardNumInBoard: [Int], _ r: Int) {
    if r == 0 {
        permutationResult.append(cardNumInBoard)
    } else {
        var tmp: [Int] = cardNumInBoard
        calcPermutation(tmp, r - 1)
        
        for i in 0..<r {
            tmp.swapAt(i, r)
            calcPermutation(tmp, r - 1)
            tmp.swapAt(i, r)
        }
    }
}

func calcSameCardOrder(_ order: [Int]) {
    if order.count == cardNumInBoard.count {
        sameCardsOrder.append(order)
        return
    }
    
    calcSameCardOrder(order + [0])
    calcSameCardOrder(order + [1])
}

func calcOrderOfCards() {
    for sameCardOrder in sameCardsOrder {
        for cardOrder in permutationResult {
            var order: [(Int, Int)] = []
            
            for i in 0..<cardOrder.count {
                let currCardNum = cardOrder[i]
                if sameCardOrder[i] == 0 {
                    order.append((sameCardsPos[currCardNum][0]))
                    order.append((sameCardsPos[currCardNum][1]))
                } else {
                    order.append((sameCardsPos[currCardNum][1]))
                    order.append((sameCardsPos[currCardNum][0]))
                }
            }
            orderOfCards.append(order)
        }
    }
}

func goCtrlRight(_ y: Int, _ x: Int) -> Int {
    var moveCnt = 1
    while x + moveCnt <= 3 && arr[y][x + moveCnt] == 0 {
        if x + moveCnt == 3 {
            return moveCnt
        }
        moveCnt += 1
    }
    return moveCnt
}

func goCtrlLeft(_ y: Int, _ x: Int) -> Int {
    var moveCnt = -1
    while x + moveCnt >= 0 && arr[y][x + moveCnt] == 0 {
        if x + moveCnt == 0 {
            return moveCnt
        }
        moveCnt -= 1
    }
    return moveCnt
}

func goCtrlDown(_ y: Int, _ x: Int) -> Int {
    var moveCnt = 1
    while y + moveCnt <= 3 && arr[y + moveCnt][x] == 0 {
        if y + moveCnt == 3 {
            return moveCnt
        }
        moveCnt += 1
    }
    return moveCnt
}

func goCtrlUp(_ y: Int, _ x: Int) -> Int {
    var moveCnt = -1
    while y + moveCnt >= 0 && arr[y + moveCnt][x] == 0 {
        if y + moveCnt == 0 {
            return moveCnt
        }
        moveCnt -= 1
    }
    return moveCnt
}

func isValid(_ y: Int, _ x: Int) -> Bool {
    if y < 0 || y >= 4 || x < 0 || x >= 4 {
        return false
    }
    return true
}

//print(solution([[1,0,0,3],[2,0,0,0],[0,0,0,2],[3,0,1,0]], 1, 0))
//print(solution([[3,0,0,2],[0,0,1,0],[0,1,0,0],[2,0,0,3]], 0, 1))
*/
