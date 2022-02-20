//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/21.
/*
func maxStrength(n: Int) -> Int {
    var arr: [Int] = [n]
    
    while true {
        let num = arr.last!
        var sum = 0
        var digits: [Int] = []
        var tmp = num
        
        while tmp > 0 {
            digits.append(tmp % 10)
            tmp /= 10
        }
        
        for digit in digits {
            sum += factorial(digit)
        }
        
        if arr.contains(sum) {
            break
        } else {
            arr.append(sum)
        }
    }
    return arr.max()! * arr.count
}

func factorial(_ n: Int) -> Int {
    var n: Int = n
    var result: Int = 1
    
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}
*/
