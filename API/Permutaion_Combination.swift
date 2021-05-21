//
//  Permutaion_Combination.swift
//  Algorithm
//
//  Created by kakao on 2021/05/13.
//
import Foundation

func factorial(_ n: Int) -> Int {
    var n: Int = n
    var result: Int = 1
    
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}

func permutations(_ n: Int, _ r: Int) -> Int {
    // nPr
    var n: Int = n
    var result: Int = n
    
    for _ in 1..<r {
        n -= 1
        result *= n
    }
    return result
}

func combinations(_ n: Int, _ r: Int) -> Int {
    // nCr. 생각보다 오버플로우가 많이 발생함. 아래를 쓰는걸 추천.
    return permutations(n, r) / factorial(r)    // nCr == n! / ((n-r)! * r!) == nPr / k!
}

func binomialCoefficient(_ n: Int, _ r: Int, mod: Int? = nil) -> Int {
    // 위의 combinations 메서드는 permutations 수행을 한 뒤에 factorial로 나누기 때문에, 분자값이 매우 큰 경우 오류가 발생할 수 있다.
    // 이 알고리즘은 DP를 사용하여 해당 문제를 개선한다. 파스칼의 삼각형에 기반하여 작성되었다.
    // mod는 overflow를 막기위해 문제에서 값을 제한한 경우에 쓰인다.
    var bc: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)
    
    for i in 0...n {
        bc[i][0] = 1
        bc[i][i] = 1
    }
    
    if n > 0 {
        for i in 1...n {
            for j in 1..<i {
                bc[i][j] = bc[i - 1][j - 1] + bc[i - 1][j]
                if mod != nil {
                    bc[i][j] %= mod!
                }
            }
        }
    }
    return bc[n][r]
}

func printPermutationsArray<T>(_ a: [T], _ r: Int) {
    // recursive algorithm by Niklaus Wirth
    // 주어진 배열을 나열하는 모든 경우의 수를 출력한다. 호출시 r값은 a.count - 1 로 설정한다.
    if r == 0 {
        print(a)    // 여기가 종료조건. 출력이 아닌 값을 저장하고 싶다면 전역변수에 a를 저장해주면 된다.
    } else {
        var a: [T] = a
        printPermutationsArray(a, r - 1)
        
        for i in 0..<r {
            a.swapAt(i, r)
            printPermutationsArray(a, r - 1)
            a.swapAt(i, r)
        }
    }
}

// nCr의 모든 경우의 수를 찾아서 리턴한다.
func combinations<T>(elements: ArraySlice<T>, r: Int) -> [[T]] {
    if r == 0 {
        return [[]]
    }
    
    guard let first = elements.first else {
        return []
    }
    
    let head: [T] = [first]
    let subCombinations: [[T]] = combinations(elements: elements, r: r - 1)
    var ret: [[T]] = subCombinations.map { head + $0 }
    ret += combinations(elements: elements.dropFirst(), r: r)
    
    return ret
}

func combinations<T>(elements: Array<T>, r: Int) -> [[T]] {
    return combinations(elements: ArraySlice(elements), r: r)
}
