//
//  String+Utils.swift
//  Algorithm
//
//  Created by kakao on 2021/04/18.
//
import Foundation

extension String {
    func splitInt() -> [Int] {
        // 한자리 정수들과 공백으로 이루어진 문자열을 Int배열로 리턴하는 함수
        // ex) "1 3 9 -5 -7" -> [1, 3, 9, -5, -7]
        var isNegative: Bool = false
        var num: Int = 0
        var result: [Int] = []
        
        let asciiZero: UInt8 = Character("0").asciiValue!
        
        for c in self + " " {
            if c == Character(" ") {
                if isNegative {
                    num *= -1
                }
                
                result.append(num)
                
                num = 0
                isNegative = false
            } else if c == Character("-") {
                isNegative = true
            } else {
                num += Int(c.asciiValue! - asciiZero)
            }
        }
        return result
    }
}
