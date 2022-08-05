//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/02.
//
/*
var totalSum: [Int] = []    // totalSum[i]: 1...i초 까지의 누적 재생시간

func solution(_ play_time: String, _ adv_time: String, _ logs: [String]) -> String {
    totalSum = Array(repeating: 0, count: convertToSecond(play_time) + 1)
    var advTime: Int = 0
    var maxPlayTime: Int = 0    // 최대 누적 재생시간
    var resultTime: Int = 0     // 가장 빠른 시작 시각
    
    calculateTotalSum(logs)     // 누적 합을 구한다.
    
    advTime = convertToSecond(adv_time)
    maxPlayTime = totalSum[advTime - 1]
    
    for i in stride(from: 0, through: convertToSecond(play_time) - advTime, by: 1) {
        if maxPlayTime < totalSum[i + advTime] - totalSum[i] {
            // 최대 누적 재생시간이 같은 경우는 가장 빠른 시작 시각을 리턴해야 하므로, 등호를 쓰지 않고 부등호를 사용한다. <= (x)
            maxPlayTime = totalSum[i + advTime] - totalSum[i]
            resultTime = i + 1
        }
    }
    
    return convertToString(resultTime)
}

func convertToSecond(_ time: String) -> Int {
    // "HH:MM:SS"를 초 단위로 변경
    let time = time.split(separator: ":").map { Int(String($0))! }
    return time[0] * 3600 + time[1] * 60 + time[2]
}

func convertToString(_ time: Int) -> String {
    var curr = time
    let hour = curr / 3600
    curr %= 3600
    let min = curr / 60
    curr %= 60
    let second = curr
    
    return String(format: "%02d", hour) + ":" + String(format: "%02d", min) + ":" + String(format: "%02d", second)
}

func calculateTotalSum(_ logs: [String]) {
    // 시청 시작시각과 종료시각이 기록된 logs로 누적합을 구하는 과정
    for log in logs {
        // 구간 기록을 만든다. totalSum[i]: i초에 시청을 시작한 사람의 수
        // 시작시간과 끝시간을 초로 변환한 뒤 totalSum[start], totalSum[end]에 각각 1과 -1을 더해준다.
        let split = log.split(separator: "-").map { String($0) }
        let start = convertToSecond(split[0]), end = convertToSecond(split[1])
        
        totalSum[start] += 1
        totalSum[end] -= 1
    }
    
    for i in 1..<totalSum.count {
        // 누적 시청자 수를 구한다. totalSum[i]: i초에 시청하고 있는 사람의 수
        totalSum[i] += totalSum[i - 1]
    }
    
    for i in 1..<totalSum.count {
        // 누적 재생 시간(누적 재생 횟수)를 구한다. ==> 누적 재생 시간이라는 것이 결국 시청자의 수에 의해 결정되기 때문
        totalSum[i] += totalSum[i - 1]
    }
}

//print(solution("02:03:55", "00:14:15", ["01:20:15-01:45:14", "00:40:31-01:00:00", "00:25:50-00:48:29", "01:30:59-01:53:29", "01:37:44-02:02:30"]))
//print(solution("99:59:59", "25:00:00", ["69:59:59-89:59:59", "01:00:00-21:00:00", "79:59:59-99:59:59", "11:00:00-31:00:00"]))
//print(solution("50:00:00", "50:00:00", ["15:36:51-38:21:49", "10:14:18-15:36:51", "38:21:49-42:51:45"]))
*/
