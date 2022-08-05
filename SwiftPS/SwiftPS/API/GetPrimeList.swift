//
//  GetPrimeList.swift
//  Algorithm
//
//  Created by kakao on 2021/05/11.
//
import Foundation

func getPrimeList(to M: Int) -> [Bool] {
    // 에라토스테네스의 체를 이용하여 M 이하의 모든 소수 구하기
    var prime: [Bool] = Array(repeating: true, count: M+1)  // prime[i]가 true이면 i는 소수
    prime[0] = false
    prime[1] = false
    
    if M <= 3 {     // 이 처리를 안하면 M에 1,2,3 입력이 들어왔을때 아래 for문에서 런타임에러 발생.
        return prime
    }
    
    for i in 2...Int(sqrt(Double(M))) {
        if prime[i] {
            for j in stride(from: i * i, through: M, by: i) {
                prime[j] = false
            }
        }
    }
    
    return prime
}
