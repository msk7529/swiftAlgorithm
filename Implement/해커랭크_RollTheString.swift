//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/02/26.
/*
// Roll the String
// https://www.hackerrank.com/x/library/hackerrank/all/questions/296164/try
// bruteForce로는 안된다는거는 쉽게 알 수 있으나, 최적화할 방법을 찾는데는 시간이 좀 걸린다.(O(len(s)*log(len(s)))

func rollTheString(s: String, roll: [Int]) -> String {
    let roll = roll.sorted()
    var currIdx = 0     // 현재 바라보고 있는 s의 문자 인덱스
    var currRollCnt = roll.count    // 현재 바라보고 있는 문자에 해당하는 roll 카운트
    var strRollCnt = Array(repeating: 0, count: s.count)    // s의 각 문자들에 해당하는 roll 카운트를 저장하는 배열
    var result: String = ""
    
    for num in roll {
        for i in stride(from: currIdx, to: num, by: 1) {
            strRollCnt[i] = currRollCnt
        }
        currIdx = num
        currRollCnt -= 1
    }
    
    for (index, char) in s.enumerated() {
        let rollCnt = strRollCnt[index]
        result += String(rollOneChar(char: char, count: rollCnt))
    }
    return result
}

func rollOneChar(char: Character, count: Int) -> Character {
    var ascii = char.asciiValue! + UInt8(count % 26)
    if ascii > 122 { ascii -= 26 }
    return Character(UnicodeScalar(ascii))
}

print(rollTheString(s: "vwxyz", roll: [5, 4, 3, 2, 1]))
*/
