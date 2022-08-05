//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/10.
//
/*
func solution(_ p: String) -> String {
    guard !p.isEmpty else { return "" }
    guard !isRightString(p) else { return p }
    
    return excuteStage(p)
}

func excuteStage(_ s: String) -> String {
    if s.isEmpty { return "" }
    
    var (u, v) = splitStringToBalencedString(s)
    
    if isRightString(u) {
        return u + excuteStage(v)
    } else {
        var str = "(" + excuteStage(v) + ")"

        u.removeFirst()
        u.removeLast()
        
        var reConstructU: String = ""
        
        for char in u {
            if char == "(" {
                reConstructU += ")"
            } else {
                reConstructU += "("
            }
        }
        str += reConstructU
        return str
    }
}

func isRightString(_ s: String) -> Bool {
    var queue: Queue<Character> = .init()
    
    for char in s {
        if char == "(" {
            queue.enqueue(char)
        } else {
            if let front = queue.front {
                if front == "(" {
                    queue.dequeue()
                } else {
                    return false
                }
            } else {
                return false
            }
        }
    }
    return queue.isEmpty ? true : false
}

func splitStringToBalencedString(_ s: String) -> (String, String) {
    var leftCount: Int = 0
    var rightCount: Int = 0
    var u: String = ""
    let v: String
    
    for char in s {
        if char == "(" {
            leftCount += 1
        } else {
            rightCount += 1
        }
        u += String(char)
        
        if leftCount == rightCount { break }
    }
    
    if u.count == s.count {
        v = ""
    } else {
        v = String(Array(s)[u.count..<s.count])
    }
    return (u, v)
}

print(solution("(()())()"))
print(solution(")("))
print(solution("()))((()"))
*/
