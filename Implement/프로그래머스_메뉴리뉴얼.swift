//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/31.
//
/*
func solution(_ orders: [String], _ course: [Int]) -> [String] {
    var sortedOrders: [String] = []
    var result: [String] = []
    
    for order in orders {
        // 아래 for문의 dic에 킷값으로 넣기 위해 정렬
        sortedOrders.append(String(order.sorted()))
    }
    
    for num in course {
        var dic: [String: Int] = [:]
        var maxValue = 0
        var currResult: [String] = []
        
        for curr in sortedOrders {
            if curr.count < num { continue }
            
            combinations(elements: Array(curr), r: num).map { String($0) }.forEach { dic[$0, default: 0] += 1 }
        }
        
        let filteredDic = dic.filter { $0.value > 1 }
        for curr in filteredDic {
            if curr.value == maxValue {
                currResult.append(curr.key)
            } else if curr.value > maxValue {
                maxValue = curr.value
                currResult = [curr.key]
            }
        }
        
        if !currResult.isEmpty {
            result.append(contentsOf: currResult)
        }
    }
    
    return result.sorted()
}

print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2,3,5]))
print(solution(["XYZ", "XWY", "WXA"], [2,3,4]))
*/
