//
//
//  Created by kakao on 2021/09/11.
//

// === 1번
/*
var reportInfo: [String: Set<String>] = [:]
var countDic: [String: Int] = [:]

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    var result: [Int] = []
    
    for curr in report {
        let line = curr.split(separator: " ").map { String($0) }
        let targetUser = line[1], reportUser = line[0]
        
        if var value = reportInfo[targetUser] {
            value.insert(reportUser)
            reportInfo[targetUser] = value
        } else {
            var s: Set<String> = .init()
            s.insert(reportUser)
            reportInfo[targetUser] = s
        }
    }
    
    for info in reportInfo {
        if info.value.count >= k {
            for reportUser in info.value {
                countDic[reportUser, default: 0] += 1
            }
        }
    }
    
    for user in id_list {
        result.append(countDic[user] ?? 0)
    }
    
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
*/


// === 2번
/*
import Foundation
 
func solution(_ n: Int, _ k: Int) -> Int {
    let convertedNum = String(n, radix: k, uppercase: false)
    let splited = convertedNum.split(separator: "0").map { String($0) }
    var result: Int = 0
    
    for curr in splited {
        let num = Int(curr, radix: 10)!
        if num.isPrime() {
            result += 1
        }
    }
    
    return result
}

print(solution(437674, 3))
print(solution(110011, 10))
*/


// === 3번
/*
import Foundation

var incomeHourForCars: [String: String] = [:]
var sumOfTimesForCars: [String: Int] = [:]
var result: [String: Int] = [:]

func solution(_ fees: [Int], _ records: [String]) -> [Int] {
    let basicTime = fees[0], basicFee = fees[1], unitMin = fees[2], unitFee = fees[3]
    
    for record in records {
        let line = record.split(separator: " ").map { String($0) }
        let time = line[0], carNum = line[1], type = line[2]
        
        if type == "IN" {
            incomeHourForCars[carNum] = time
        } else {
            let diff = timeToMin(time) - timeToMin(incomeHourForCars[carNum]!)
            sumOfTimesForCars[carNum, default: 0] += diff
            incomeHourForCars[carNum] = ""
        }
    }
    
    for existCar in incomeHourForCars {
        if !existCar.value.isEmpty {
            let diff = timeToMin("23:59") - timeToMin(existCar.value)
            sumOfTimesForCars[existCar.key, default: 0] += diff
        }
    }
    
    for carInfo in sumOfTimesForCars {
        let carNum = carInfo.key, totalTime = carInfo.value
        
        if totalTime > basicTime {
            result[carNum] = basicFee + Int(ceil(Double(totalTime - basicTime) / Double(unitMin))) * unitFee
        } else {
            result[carNum] = basicFee
        }
    }
    
    return result.sorted(by: { $0.key < $1.key }).map { $0.value }
}

func timeToMin(_ s: String) -> Int {
    let splited = s.split(separator: ":").map { Int(String($0))! }
    let hour = splited[0], min = splited[1]
    return hour * 60 + min
}

print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))
print(solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"]))
print(solution([1, 461, 1, 10], ["00:00 1234 IN"]))
*/


// === 4번
/*
var N: Int = 0
var ryanInfos: [[Int]] = []
var maxDiff: Int = 0
var resultInfo: [[Int]] = []

func solution(_ n: Int, _ info: [Int]) -> [Int] {
    N = n
    
    calculateAllRyanInfos(remain: N, curr: [])
    
    for ryanInfo in ryanInfos {
        var ryanTotal = 0
        var appeachTotal = 0
        
        for i in 0...10 {
            let score = 10 - i
            if ryanInfo[i] > info[i] {
                ryanTotal += score
            } else if info[i] >= ryanInfo[i] && info[i] > 0 {
                appeachTotal += score
            }
        }
        
        if ryanTotal > appeachTotal {
            let currDiff = ryanTotal - appeachTotal
            if currDiff > maxDiff {
                resultInfo = [ryanInfo]
                maxDiff = currDiff
            } else if currDiff == maxDiff {
                resultInfo.append(ryanInfo)
            }
        }
    }
    
    if resultInfo.isEmpty {
        return [-1]
    } else {
        var reverseInfo: [String] = []
        
        for retInfo in resultInfo {
            reverseInfo.append(String(retInfo.map { String($0) }.joined().reversed()))
        }
        
        reverseInfo.sort { $0 > $1 }
        
        let ret = String(reverseInfo.first!.reversed())
        return ret.map { Int(String($0))! }
    }
}

func calculateAllRyanInfos(remain: Int, curr: [Int]) {
    if remain == 0 {
        var tmp = curr
        
        while tmp.count != 11 {
            tmp.append(0)
        }
        ryanInfos.append(tmp)
        return
    }
    
    if curr.count == 11 { return }
    
    for i in 0...remain {
        calculateAllRyanInfos(remain: remain - i, curr: curr + [i])
    }
}

print(solution(5, [2,1,1,1,0,0,0,0,0,0,0]))
print(solution(1, [1,0,0,0,0,0,0,0,0,0,0]))
print(solution(9, [0,0,1,2,0,1,1,1,1,1,1]))
print(solution(10, [0,0,0,0,0,0,0,0,3,4,3]))
*/


// === 6번. 효율성 x
/*
 func solution(_ board: [[Int]], _ skill: [[Int]]) -> Int {
     var board = board
     var result = 0
     let N = board.count
     let M = board[0].count
     
     for skil in skill {
         let type = skil[0], r1 = skil[1], c1 = skil[2], r2 = skil[3], c2 = skil[4], degree = skil[5]
         
         if type == 1 {
             for i in r1...r2 {
                 for j in c1...c2 {
                     board[i][j] -= degree
                 }
             }
         } else {
             for i in r1...r2 {
                 for j in c1...c2 {
                     board[i][j] += degree
                 }
             }
         }
     }
     
     for i in 0..<N {
         for j in 0..<M {
             if board[i][j] > 0 { result += 1 }
         }
     }
     
     return result
 }

 print(solution([[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5]], [[1,0,0,3,4,4],[1,2,0,2,3,2],[2,1,0,3,1,2],[1,0,1,3,3,1]]))
 print(solution([[1,2,3],[4,5,6],[7,8,9]], [[1,1,1,2,2,4],[1,0,0,1,1,2],[2,2,0,2,0,100]]))
*/
