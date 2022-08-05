//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/09.
//
/*
public class SegmentTree<T> {
    // 구간의 최소높이 막대기의 index를 저장하는 세그먼트트리
    private var value: T
    private var function: (T, T) -> T
    private var leftBound: Int
    private var rightBound: Int
    private var leftChild: SegmentTree<T>?
    private var rightChild: SegmentTree<T>?

    public init(array: [T], leftBound: Int, rightBound: Int, function: @escaping (T, T) -> T) {
        self.leftBound = leftBound
        self.rightBound = rightBound
        self.function = function

        if leftBound == rightBound {
            // left와 right가 일치하면 해당 인덱스 값을 저장한다.
            value = leftBound as! T
        } else {
            let middle = (leftBound + rightBound) / 2
            leftChild = SegmentTree<T>(array: array, leftBound: leftBound, rightBound: middle, function: function)
            rightChild = SegmentTree<T>(array: array, leftBound: middle + 1, rightBound: rightBound, function: function)
            value = function(leftChild!.value, rightChild!.value)
        }
    }

    public convenience init(array: [T], function: @escaping (T, T) -> T) {  // O(N)
        self.init(array: array, leftBound: 0, rightBound: array.count - 1, function: function)
    }

    public func query(leftBound: Int, rightBound: Int) -> T {   // O(logN)
        if self.leftBound == leftBound && self.rightBound == rightBound {
            // left, right가 모두 일치 -> 자신의 value 리턴
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
            return function(leftResult, rightResult)
        }
    }
}

var arr: [Int] = []
var N: Int = Int(readLine()!)!

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

let segmentTree: SegmentTree<Int> = .init(array: arr, function: { a, b in arr[a] < arr[b] ? a : b })    // 높이가 더 작은 배열의 인덱스를 저장

print(devideConquer(left: 0, right: N - 1))

func devideConquer(left: Int, right: Int) -> Int {
    if left > right {
        return 0
    }
    
    let index = segmentTree.query(leftBound: left, rightBound: right)
    var result = (right - left + 1) * arr[index]    // 현재 구간에서의 최대 넓이
    result = max(result, devideConquer(left: left, right: index - 1))   // 왼쪽 구간에 대해 재귀호출
    result = max(result, devideConquer(left: index + 1, right: right))  // 오른쪽 구간에 대해 재귀호출
    
    return result
}
*/
