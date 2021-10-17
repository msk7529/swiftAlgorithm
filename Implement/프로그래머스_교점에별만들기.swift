//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/17.
//
/*
func solution(_ line: [[Int]]) -> [String] {
    var minX = Int.max, minY = Int.max, maxX = Int.min, maxY = Int.min
    var points: [(Int, Int)] = []
    var result: [String] = []
    
    for i in stride(from: 0, to: line.count, by: 1) {
        let a = line[i][0], b = line[i][1], e = line[i][2]
        for j in stride(from: i + 1, to: line.count, by: 1) {
            let c = line[j][0], d = line[j][1], f = line[j][2]
            
            let mod = a * d - b * c
            
            if mod == 0 { continue }
            
            let xx = b * f - e * d, yy = e * c - a * f
            
            if xx.isMultiple(of: mod) && yy.isMultiple(of: mod) {
                let x = xx / mod, y = yy / mod
                minX = min(minX, x)
                minY = min(minY, y)
                maxX = max(maxX, x)
                maxY = max(maxY, y)
                points.append((x, y))
            }
        }
    }
    
    var arr: [[String]] = Array(repeating: Array(repeating: ".", count: maxX - minX + 1), count: maxY - minY + 1)
    
    for (x, y) in points {
        // 교점들을 1사분면으로 옮긴다.
        arr[maxY - y][x - minX] = "*"
    }
    
    for i in 0..<arr.count {
        result.append(arr[i].joined())
    }
    return result
}

print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]))
print(solution([[0, 1, -1], [1, 0, -1], [1, 0, 1]]))
print(solution([[1, -1, 0], [2, -1, 0]]))
print(solution([[1, -1, 0], [2, -1, 0], [4, -1, 0]]))
*/
