//
//  LazySegmentTree.swift
//  Algorithm
//
//  Created by kakao on 2021/08/09.
//
// https://github.com/raywenderlich/swift-algorithm-club/blob/master/Segment%20Tree/LazyPropagation/LazyPropagation.playground/Contents.swift

public class LazySegmentTree {
    // 범위 update query도 O(logN)에 처리할 수 있는 세그먼트트리
    // 구간 업데이트를 할 때, 당장은 리프노드까지 이어지는 모든 노드를 업데이트 할 필요가 없다는 것에서 아이디어 착안
    // 즉, [l, r]에 a를 더하는 업데이트 쿼리가 들어오면, 노드 표현범위에 [l, r]에 완전히 포함되는 노드 중 부모노드와, 루트부터 부모노드까지의 노드 값만 업데이트 한다. 업데이트한 노드의 자식노드들은 업데이트하지 않고 미뤄둔다. 그 값을 lazyValue에 저장한다.
    
    private var value: Int
    private var leftBound: Int
    private var rightBound: Int
    private var leftChild: LazySegmentTree?
    private var rightChild: LazySegmentTree?
    
    // Interval Update Lazy Element
    private var lazyValue: Int
    
    // MARK: - Push Up Operation
    // Description: pushUp() - update items to the top
    private func pushUp(lson: LazySegmentTree, rson: LazySegmentTree) {
        self.value = lson.value + rson.value
    }
    
    // MARK: - Push Down Operation
    // Description: pushDown() - update items to the bottom
    private func pushDown(round: Int, lson: LazySegmentTree, rson: LazySegmentTree) {
        guard lazyValue != 0 else { return }
        
        lson.lazyValue += lazyValue
        rson.lazyValue += lazyValue
        lson.value += lazyValue * (round - (round >> 1))
        rson.value += lazyValue * (round >> 1)
        lazyValue = 0
    }
    
    public init(array: [Int], leftBound: Int, rightBound: Int) {
        self.leftBound = leftBound
        self.rightBound = rightBound
        self.value = 0
        self.lazyValue = 0
        
        guard leftBound != rightBound else {
            value = array[leftBound]
            return
        }
        
        let middle = leftBound + (rightBound - leftBound) / 2
        leftChild = LazySegmentTree(array: array, leftBound: leftBound, rightBound: middle)
        rightChild = LazySegmentTree(array: array, leftBound: middle + 1, rightBound: rightBound)
        
        if let leftChild = leftChild, let rightChild = rightChild {
            pushUp(lson: leftChild, rson: rightChild)
        }
    }
    
    public convenience init(array: [Int]) {
        self.init(array: array, leftBound: 0, rightBound: array.count - 1)
    }
    
    public func query(leftBound: Int, rightBound: Int) -> Int {
        if leftBound <= self.leftBound && self.rightBound <= rightBound {
            return value
        }
        
        guard let leftChild  = leftChild  else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }
        
        pushDown(round: self.rightBound - self.leftBound + 1, lson: leftChild, rson: rightChild)
        
        let middle = self.leftBound + (self.rightBound - self.leftBound) / 2
        var result = 0
        
        if leftBound <= middle { result +=  leftChild.query(leftBound: leftBound, rightBound: rightBound) }
        if rightBound > middle { result += rightChild.query(leftBound: leftBound, rightBound: rightBound) }
        
        return result
    }
    
    // MARK: - One Item Update
    public func update(index: Int, incremental: Int) {
        guard self.leftBound != self.rightBound else {
            self.value += incremental
            return
        }
        
        guard let leftChild  = leftChild  else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }
        
        let middle = self.leftBound + (self.rightBound - self.leftBound) / 2
        
        if index <= middle {
            leftChild.update(index: index, incremental: incremental)
        } else {
            rightChild.update(index: index, incremental: incremental)
        }
        
        pushUp(lson: leftChild, rson: rightChild)
    }
    
    // MARK: - Interval Item Update
    public func update(leftBound: Int, rightBound: Int, incremental: Int) {
        if leftBound <= self.leftBound && self.rightBound <= rightBound {
            self.lazyValue += incremental
            self.value += incremental * (self.rightBound - self.leftBound + 1)
            return
        }
        
        guard let leftChild  = leftChild  else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }
        
        pushDown(round: self.rightBound - self.leftBound + 1, lson: leftChild, rson: rightChild)
        
        let middle = self.leftBound + (self.rightBound - self.leftBound) / 2
        
        if leftBound <= middle {
            leftChild.update(leftBound: leftBound, rightBound: rightBound, incremental: incremental)
        }
        
        if middle < rightBound {
            rightChild.update(leftBound: leftBound, rightBound: rightBound, incremental: incremental)
        }
        
        pushUp(lson: leftChild, rson: rightChild)
    }
}
