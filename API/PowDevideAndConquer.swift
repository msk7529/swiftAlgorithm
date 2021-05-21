//
//  PowDevideAndConquer.swift
//  Algorithm
//
//  Created by kakao on 2021/05/22.
//
import Foundation

func pow(_ a: Int, _ b: Int, mod: Int? = nil) -> Int {
    // a^b를 분할정복을 이용하여 계산한다. O(logb)
    // a^b = a^(b/2) * a^(b/2)  (b가 짝수일 때)
    // a^b = a^(b/2) * a^(b/2) * a   (b가 홀수일 때)
    if b == 0 {
        return 1
    } else if b == 1 {
        return mod == nil ? a : a % mod!
    }
    
    let tmp: Int = pow(a, b / 2, mod: mod)
    
    if b % 2 == 0 {
        return mod == nil ? tmp * tmp : (tmp * tmp) % mod!
    } else {
        return mod == nil ? tmp * tmp * a : ((tmp * tmp) % mod! * a) % mod!
    }
}
