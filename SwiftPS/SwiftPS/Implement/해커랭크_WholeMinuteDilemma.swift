//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/27.
/*
// Whole Minute Dilemma
// https://www.hackerrank.com/x/library/hackerrank/all/questions/308704/try
// songs원소의 최대값은 1000이고, 그 안에 60의 배수는 16개만 존재한다는 사실을 이용

func playlist(songs: [Int]) -> Int {
    var isVisited: [Bool] = Array(repeating: false, count: 1001)
    var dic: [Int: Int] = [:]
    var result: Int = 0
    let maxNum = songs.max()!
    
    for song in songs {
        dic[song, default: 0] += 1
    }
    
    for (song, value) in dic {
        isVisited[song] = true
        for i in stride(from: (1 + song) / 60, through: (1000 + song) / 60, by: 1) {
            // song + targetNum = 60 * i -> targetNum = 60*i - song -> (1+song)/60 <= i <= (1000+song)/60
            let targetNum = 60 * i - song
            
            if targetNum <= 0 { continue }
            if targetNum > maxNum { break }
            
            if targetNum == song {
                result += (dic[targetNum]! * (dic[targetNum]! - 1)) / 2     // nC2
            } else if dic[targetNum] != nil && !isVisited[targetNum] {
                result += (value * dic[targetNum]!)
            }
        }
    }
    
    return result
}

print(playlist(songs: [60, 60, 60]))
*/
