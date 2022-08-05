//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/11.
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

    public func query(leftBound: Int, rightBound: Int) -> Int {   // O(logN)
        if self.leftBound == leftBound && self.rightBound == rightBound {
            return self.value
        }

        guard let leftChild = leftChild else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }

        if leftChild.rightBound < leftBound {
            // 왼쪽자식의 오른쪽이 left보다 작다. -> 오른쪽 자식에 모두 포함되므로 오른쪽부터 다시
            return rightChild.query(leftBound: leftBound, rightBound: rightBound)
        } else if rightChild.leftBound > rightBound {
            // 오른쪽자식의 왼쪽이 right보다 크다. -> 왼쪽 자식에 모두 포함되므로 왼쪽부터 다시
            return leftChild.query(leftBound: leftBound, rightBound: rightBound)
        } else {
            // 양쪽 자식들에 걸쳐져 있음 -> (leftBounds ~ leftChild.right) + (rightChild.left ~ rightBounds)
            let leftResult = leftChild.query(leftBound: leftBound, rightBound: leftChild.rightBound)
            let rightResult = rightChild.query(leftBound:rightChild.leftBound, rightBound: rightBound)
            return leftResult + rightResult
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
let A = readLine()!.split(separator: " ").map { Int(String($0))! }
let B = readLine()!.split(separator: " ").map { Int(String($0))! }
var dic: [Int: Int] = [:]
var arr: [Int] = []
let segmentTree: SegTree = .init(leftBound: 0, rightBound: N)
var result: Int = 0

for i in 0..<N {
    dic[A[i]] = i
}

for i in 0..<N {
    let index = dic[B[i]]!
    arr.append(index)
}

segmentTree.updateItem(at: arr[0], item: 1)

for i in stride(from: 1, through: N - 1, by: 1) {
    segmentTree.updateItem(at: arr[i], item: 1)
    result += segmentTree.query(leftBound: arr[i] + 1, rightBound: N)
}

print(result)
*/
