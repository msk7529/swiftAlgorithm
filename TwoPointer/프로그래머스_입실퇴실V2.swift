//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/15.
//
/*
func solution(_ enter: [Int], _ leave: [Int]) -> [Int] {
    var personNumbersWhenEntered: [Set<Int>] = Array(repeating: [], count: enter.count + 1)    // personNumbersWhenEntered[i]: i번 사람이 입장한 시점에 회의실에 들어있던 사람들의 번호
    var personNumbersInRoom: Set<Int> = .init()     // 현재 회의실에 들어있는 사람들의 번호
    var li = 0, ei = 0
    
    while li < enter.count || ei < enter.count {    // 이 문제에서는 || 을 쓰던지 &&을 쓰던지 결과는 동일.
        if !personNumbersInRoom.contains(leave[li]) {
            // 사람이 퇴장하기 위해서는 먼저 입장을 해야한다. 따라서 leave[li]가 입장할때까지 사람들을 입장시킨다.
            // 사람들이 입장할때 personNumbersWhenEntered에 현재 방에 있던 인원을 저장한다.
            personNumbersWhenEntered[enter[ei]] = personNumbersInRoom
            personNumbersInRoom.insert(enter[ei])
            ei += 1
        } else {
            personNumbersInRoom.remove(leave[li])
            li += 1
        }
    }
    
    for (i, persons) in personNumbersWhenEntered.enumerated() {
        for person in persons {
            personNumbersWhenEntered[person].insert(i)
        }
    }
    return personNumbersWhenEntered[1...].map { $0.count }
}

print(solution([1,4,2,3], [2,1,3,4]))
print(solution([1,4,2,3], [2,1,4,3]))
*/
