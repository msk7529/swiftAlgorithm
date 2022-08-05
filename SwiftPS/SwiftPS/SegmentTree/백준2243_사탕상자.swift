//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/12.
//
/*
public class SegTree {
    private var value: Int = 0  // 초기화시 노드값은 전부 0으로 초기화.
    private var leftBound: Int
    private var rightBound: Int
    private var leftChild: SegTree?
    private var rightChild: SegTree?

    public init(leftBound: Int, rightBound: Int) {
        self.leftBound = leftBound
        self.rightBound = rightBound

        if leftBound != rightBound {
            let middle = (leftBound + rightBound) / 2
            leftChild = SegTree(leftBound: leftBound, rightBound: middle)
            rightChild = SegTree(leftBound: middle+1, rightBound: rightBound)
        }
    }

    public func query(leftBound: Int, rightBound: Int, k: Int) -> Int {   // O(logN)
        if leftBound == rightBound {
            return leftBound
        }

        guard let leftChild = leftChild else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }

        let lVal = leftChild.value
        
        if lVal >= k {
            return leftChild.query(leftBound: leftBound, rightBound: leftChild.rightBound, k: k)
        } else {
            return rightChild.query(leftBound: rightChild.leftBound, rightBound: rightBound, k: k - lVal)
        }
    }
    
    public func updateItem(at index: Int, item: Int) {  // O(logN)
        if leftBound == rightBound {
            self.value += item
        } else if let leftChild = leftChild, let rightChild = rightChild {
            if leftChild.rightBound >= index {
                leftChild.updateItem(at: index, item: item)
            } else {
                rightChild.updateItem(at: index, item: item)
            }
            value = leftChild.value + rightChild.value
        }
    }
}

let N = Int(readLine()!)!
let segmentTree: SegTree = .init(leftBound: 0, rightBound: 1000000)
var line: [Int] = []
var result: String = ""

for _ in 0..<N {
    line = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = line[0], b = line[1]
    
    if a == 1 {
        let candy = segmentTree.query(leftBound: 0, rightBound: 1000000, k: b)
        segmentTree.updateItem(at: candy, item: -1)
        result.append("\(candy)\n")
    } else {
        let c = line[2]
        segmentTree.updateItem(at: b, item: c)
    }
}

result.removeLast()
print(result)
*/
