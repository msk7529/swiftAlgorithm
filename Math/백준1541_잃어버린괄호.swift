//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/19.
//
/*
let line = readLine()!
var beforeHasMinus: Bool = false
var currentIndex: Int = 0
var miniusResult: Int = 0
var result: Int = 0

while currentIndex < line.count {
    let currChar: Character = line[line.index(line.startIndex, offsetBy: currentIndex)]
    if currChar == "-" {
        if beforeHasMinus {
            result -= miniusResult
            miniusResult = 0
        } else {
            beforeHasMinus = true
        }
        currentIndex += 1
    } else if currChar == "+" {
        currentIndex += 1
    } else {
        let num: String = findNumber(startIndex: currentIndex)
        if beforeHasMinus {
            miniusResult += Int(num)!
        } else {
            result += Int(num)!
        }
        currentIndex += num.count
    }
}

print(result - miniusResult)

func findNumber(startIndex: Int) -> String {
    var str: String = ""
    for i in stride(from: startIndex, to: line.count, by: 1) {
        let currChar: Character = line[line.index(line.startIndex, offsetBy: i)]
        if currChar != "+" && currChar != "-" {
            str.append(currChar)
        } else {
            break
        }
    }
    return str
}
*/
