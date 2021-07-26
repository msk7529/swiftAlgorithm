//
//  BinarySearch.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/26.
//
public extension RandomAccessCollection where Element: Comparable {
    func binarySearchForAscending(value: Element) -> Index {
        // 오름차순으로 정렬된 콜렉션에서 value에 해당하는 index를 찾아 리턴한다. 없으면 -1을 리턴
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx <= endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]

            if mid == value {
                return midIdx
            } else if mid > value {
                endIdx = (midIdx as! Int) - 1
            } else {
                startIdx = (midIdx as! Int) + 1
            }
        }
        return -1 as! Index
    }
    
    func binarySearchForDescending(value: Element) -> Int {
        // 내림차순으로 정렬된 콜렉션에서 value에 해당하는 index를 찾아 리턴한다. 없으면 -1을 리턴
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx <= endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]

            if mid == value {
                return midIdx as! Int
            } else if mid < value {
                endIdx = (midIdx as! Int) - 1
            } else {
                startIdx = (midIdx as! Int) + 1
            }
        }
        return -1
    }
    
    func lowerBound(value: Element) -> Int {
        // 오름차순으로 정렬된 콜렉션에서 value 이상의 값이 처음 나오는 index를 리턴
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx < endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]
            
            if mid >= value {
                // 중간값이 원하는 값보다 크거나 같은 경우, 끝값을 중간값으로 설정하여 다시 탐색.
                endIdx = (midIdx as! Int)
            } else {
                // 중간값이 원하는 값보다 작을 경우, 시작값을 중간값 + 1로 설정하여 다시 탐색.
                startIdx = (midIdx as! Int) + 1
            }
        }
        return endIdx
    }
    
    func upperBound(value: Element) -> Int {
        // 오름차순으로 정렬된 콜렉션에서 value를 초과한 값이 처음 나오는 index를 리턴
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx < endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]
            
            if mid > value {
                // 중간값이 원하는 값보다 클 경우, 끝값을 중간값으로 설정하여 다시 탐색.
                endIdx = (midIdx as! Int)
            } else {
                // 중간값이 원하는 값보다 작을 경우, 시작값을 중간값 + 1로 설정하여 다시 탐색.
                startIdx = (midIdx as! Int) + 1
            }
        }
        return endIdx
    }
}
