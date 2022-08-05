//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/07/18.
//
/*
var dic: [Int: Int] = [0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0]
var result: Int = 0
let num = readLine()!.map { Int(String($0))! }

for curr in num {
    if curr == 6 || curr == 9 {
        checkSixNine(curr)
    } else {
        if let value = dic[curr] {
            if value == 0 {
                increaseDic()
                dic[curr] = 0
            } else {
                dic[curr] = value - 1
            }
        }
    }
}

print(result)

func checkSixNine(_ num: Int) {
    if let value = dic[num] {
        if value == 0 {
            if let value2 = dic[15 - num] {
                if value2 == 0 {
                    increaseDic()
                    dic[num] = 0
                } else {
                    dic[15 - num] = value2 - 1
                }
            }
        } else {
            dic[num] = value - 1
        }
    }
}

func increaseDic() {
    result += 1
    for (key, value) in dic {
        dic[key]! = value + 1
    }
}
*/
