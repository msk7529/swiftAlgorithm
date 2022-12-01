//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/12/01

// K를 2^n으로 쪼갠다고 했을 때, 어떻게 해야 최소번의 지수연산으로 쪼갤수 있을까가 관건.
// log2를 취해서 풀었는데, 다른 방법은 딱히 생각 안나고.. uploadedChunks 정렬까지 해주어야 올 pass

/*
import Foundation

func minimumChunksRequired(totalPackets: Int, uploadedChunks: [[Int]]) -> Int {
    var curr = 1, end = 1, result = 0
    var uploadedChunks = uploadedChunks.sorted { $0[0] < $1[0] }
    
    for chunks in uploadedChunks {
        let start = chunks[0]
        end = chunks[1]
        let chunkCount = start - curr
        
        if chunkCount > 0 {
            result += findChucks(num: curr == 1 ? chunkCount : chunkCount - 1)
        }
        curr = end
    }
    
    if totalPackets != end {
        result += findChucks(num: totalPackets - end)
    }
    
    return result
}

func findChucks(num: Int) -> Int {
    var num = num
    var ret = 0
    while num > 0 {
        let powN = log2(Float(num))
        num -= pow(2, Int(powN))
        ret += 1
    }
    return ret
}


print(minimumChunksRequired(totalPackets: 10, uploadedChunks: [[ 1, 2 ] , [ 9 , 10 ]]))
print(minimumChunksRequired(totalPackets: 18, uploadedChunks: [[ 9, 17 ]]))
print(minimumChunksRequired(totalPackets: 5, uploadedChunks: [[1,2]]))


*/
