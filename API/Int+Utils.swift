//
//  Int+Utils.swift
//  Algorithm
//
//  Created by kakao on 2021/05/09.
//

import Foundation

extension Int {
    func isPrime() -> Bool {
        // 소수판별 알고리즘. O(루트N)
        if self == 1 { return false }
        if self == 2 || self == 3 { return true }
        
        for i in 2...Int(sqrt(Double(self))) {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}
