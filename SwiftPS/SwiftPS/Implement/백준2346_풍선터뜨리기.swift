//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/13.
//
/*
class Deque {
    let index: Int
    let innerNum: Int
    var leftNode: Deque!
    var rightNode: Deque!
    
    init(index: Int, innerNum: Int) {
        self.index = index
        self.innerNum = innerNum
    }
    
    func pop() {
        self.rightNode.leftNode = self.leftNode
        self.leftNode.rightNode = self.rightNode
    }
}

let N = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let firstNode: Deque = .init(index: 1, innerNum: arr[0])
var prevNode: Deque = firstNode
var result: String = ""

for i in stride(from: 2, through: N, by: 1) {
    let currNode: Deque = .init(index: i, innerNum: arr[i - 1])
    prevNode.rightNode = currNode
    currNode.leftNode = prevNode
    
    prevNode = currNode
    
    if i == N {
        currNode.rightNode = firstNode
        firstNode.leftNode = currNode
    }
}

var currNode: Deque = firstNode
for _ in 0..<N {
    guard N != 1 else {
        result += "1"
        break
    }
    
    result += "\(currNode.index) "
    currNode.pop()
    
    var moveCnt = currNode.innerNum
    if moveCnt > 0 {
        while moveCnt > 0 {
            currNode = currNode.rightNode
            moveCnt -= 1
        }
    } else {
        while moveCnt < 0 {
            currNode = currNode.leftNode
            moveCnt += 1
        }
    }
}

print(result)
*/
