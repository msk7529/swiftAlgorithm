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

let line = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = line[0], K = line[1]
var arr: [Int] = []
var result: Int = 0
let segmentTree: SegTree = .init(leftBound: 0, rightBound: 65536)
// arr의 각 원소를 세그먼트의 리프노드로 생각한다.
// 즉, 배열원소값의 범위가 0~65535 이므로 리프노드가 65536개 있는 세그먼트트리를 만들어주고, 트리 노드들은 모두 0으로 초기화해둔다.

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

for i in 0..<N {
    segmentTree.updateItem(at: arr[i], item: 1) // 리프노드부터 루트까지 노드의 값을 1증가시킨다. 이렇게 하면 루트노드는 현재 세그먼트에 들어있는 arr 원소의 개수를 알 수 있게된다.
    
    if i >= K - 1 {
        result += segmentTree.query(leftBound: 0, rightBound: 65536, k: (K + 1) / 2)
        // 배열 원소값으로 세그먼트트리를 정의했으므로, 쿼리의 범위도 전체로 탐색해야 한다.
        segmentTree.updateItem(at: arr[i - (K - 1)], item: -1)  // 다음 업데이트를 위해 가장 먼저 넣었던 노드를 제거한다.
    }
}

print(result)
*/
