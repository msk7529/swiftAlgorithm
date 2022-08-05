//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2022/01/20.
/*
let dic: [String: String] = ["AA": "A", "AG": "C", "AC": "A", "AT": "G", "GA": "C", "GG": "G", "GC": "T", "GT": "A",
                             "CA": "A", "CG": "T", "CC": "C", "CT": "G", "TA": "G", "TG": "A", "TC": "G", "TT": "T"]
let N = Int(readLine()!)!
var dna = readLine()!.map { String($0) }

while dna.count > 1 {
    let len = dna.count
    let curr = dna[len - 1] + dna[len - 2]
    dna.removeLast()
    dna.removeLast()
    dna.append(dic[curr]!)
}
print(dna.first!)
*/
