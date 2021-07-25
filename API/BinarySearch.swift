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
    
    func binarySearchForDescending(value: Element) -> Index {
        // 내림차순으로 정렬된 콜렉션에서 value에 해당하는 index를 찾아 리턴한다. 없으면 -1을 리턴
        var startIdx = 0
        var endIdx = self.count - 1
        
        while startIdx <= endIdx {
            let midIdx = self.index(self.startIndex, offsetBy: (startIdx + endIdx) / 2)
            let mid = self[midIdx]

            if mid == value {
                return midIdx
            } else if mid < value {
                endIdx = (midIdx as! Int) - 1
            } else {
                startIdx = (midIdx as! Int) + 1
            }
        }
        return -1 as! Index
    }
}
