//
//  2DFenwickTree.swift
//  Algorithm
//
//  Created by kakao on 2021/10/02.
//
final class FenWickTree2D {
    var N: Int = 0
    var M: Int = 0
    var arr: [[Int]] = []
    var fenwickTree: [[Int]] = []
    
    func configure(arr: [[Int]]) {
        N = arr.count
        M = arr[0].count
        self.arr = Array(repeating: [], count: N + 1)   // 펜윅트리는 1번 인덱스를 루트로 사용하므로 기본배열도 (1, 1)부터 시작하도록 한다.
        
        for i in 0..<N {
            self.arr[i + 1] = [0] + arr[i]  // 0번 인덱스는 비워둔다.
        }
        fenwickTree = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
        
        for i in 1...N {
            for j in 1...M {
                update(i, j, self.arr[i][j])
            }
        }
    }
    
    func getSum(_ y: Int, _ x: Int) -> Int {    // O(logN)^2
        // (1, 1) ~ (y, x)까지의 합을 구한다.
        var sum: Int = 0
        var y = y
        
        while y > 0 {
            var x = x
            
            while x > 0 {
                sum += fenwickTree[y][x]
                x -= (x & -x)
            }
            y -= (y & -y)
        }
        return sum
    }

    func update(_ y: Int, _ x: Int, _ value: Int) {     // O(logN)^2
        // 첫 펜윅트리 구성시 말고, 쿼리에서 업데이트 하는 경우, 펜윅트리 업데이트 후에 arr도 갱신해야 한다.
        // value에는 갱신값과 기존 배열값의 차이를 넣어주어야 한다.
        var y = y
        
        while y <= N {
            var x = x
            
            while x <= M {
                fenwickTree[y][x] += value
                x += (x & -x)
            }
            y += (y & -y)
        }
    }
    
    func getSum(_ y1: Int, _ x1: Int, _ y2: Int, _ x2: Int) -> Int {
        // (y1, x1) ~ (y2, x2) 합을 구한다.
        return getSum(y2, x2) - getSum(y2, x1 - 1) - getSum(y1 - 1, x2) + getSum(y1 - 1, x1 - 1)
    }
}
