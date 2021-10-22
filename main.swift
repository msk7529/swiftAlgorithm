//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/22.
//
let N = readLine()!
let num = Int(N)!
var currPos = N.count - 1
var isSuccess: Bool = false

while currPos > 0 {
    let div = pow(10, currPos)
    let aaa = Array(N.map { String($0) }[0...currPos])
    let bbb = currPos == N.count - 1 ? [] : Array(N.map { String($0) }[currPos+1..<N.count])
    
    let front = num / div, back = num % div

    let frontMul = String(front).map { String($0) }.map { Int($0)! }.reduce(1, *)
    let backMul = String(back).map { String($0) }.map { Int($0)! }.reduce(1, *)
    
    if frontMul == backMul {
        isSuccess = true
        break
    }
    
    currPos -= 1
}

print(isSuccess ? "YES" : "NO")

/*
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
*/
