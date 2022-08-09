//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/08/10

/*
 pq를 써야하는건 기억했는데, 그리디 전략을 잘못 세워서 오답. 강의들의 정렬은 시작시간이 빠른 순서로 하되, pq에는 종료시간이 빠른순서로 들어가야 함.
 */

/*
struct Lesson: Comparable {
    let sTime: Int
    let fTime: Int
    
    static func < (lhs: Lesson, rhs: Lesson) -> Bool {
        return lhs.sTime < rhs.sTime
    }
}

let N = Int(readLine()!)!
var lessons: [Lesson] = []
var pq: PriorityQueue<Int> = .init(comparer: <)

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    lessons.append(Lesson(sTime: line[0], fTime: line[1]))
}
lessons.sort()

for lesson in lessons {
    guard let peek = pq.peek() else {
        pq.enqueue(lesson.fTime)
        continue
    }
    
    if lesson.sTime >= peek {
        pq.dequeue()
        pq.enqueue(lesson.fTime)
    } else {
        pq.enqueue(lesson.fTime)
    }
}

print(pq.count)
*/
