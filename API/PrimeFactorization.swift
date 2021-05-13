//
//  PrimeFactorization.swift
//  Algorithm
//
//  Created by kakao on 2021/05/14.
//
import Foundation

func primeFactorization(_ n: Int) -> [Int] {
    // 자연수 n을 소인수분해하여 결과를 중복포함하여 오름차순배열로 리턴한다.
    if n == 1 { return [] }
    
    var curr: Int = n
    var result: [Int] = []
    
    for i in stride(from: 2, through: Int(sqrt(Double(curr))), by: 1) {
        // for문의 curr은 while 문에서 curr이 변하더라도 값이 변하지 않는다.
        while curr % i == 0 {
            result.append(i)
            curr /= i
        }
    }
    
    if curr > 1 {
        result.append(curr)
    }
    
    return result
}
