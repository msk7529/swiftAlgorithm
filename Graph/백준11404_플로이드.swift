//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/05/05.
//
/*
import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10
            && now != 32 && now != 0 {
                str += String(bytes: [now], encoding: .ascii)!
                now = read()
        }

        return str
    }
}


let file: FileIO = .init()
var n: Int = file.readInt()
var m: Int = file.readInt()
var dist: [[Int]] = Array(repeating: Array(repeating: distMAX, count: n + 1), count: n + 1)
let distMAX: Int = 10000005

func input() {
    for _ in 0..<m {
        let a = file.readInt()
        let b = file.readInt()
        let c = file.readInt()
        dist[a][b] = min(dist[a][b], c)
    }
    
    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if dist[i][j] > dist[i][k] + dist[k][j] {
                    dist[i][j] = dist[i][k] + dist[k][j]
                }
            }
        }
    }
    
    for i in 1...n {
        dist[i][i] = 0
        let line: String = dist[i][1...n].map {
            if $0 == distMAX { return "0" }
            return String($0)
        }.joined(separator: " ")
        print(line)
    }
}

input()
*/
