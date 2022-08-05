//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/09/06.
//
/*
class TrieNode2 {
    
    var value: String?
    weak var parentNode: TrieNode2?
    var children: [String: TrieNode2] = [:]
    var isTerminating = false
    
    var isLeaf: Bool {
        return children.count == 0
    }
    
    init(value: String? = nil, parentNode: TrieNode2? = nil) {
        self.value = value
        self.parentNode = parentNode
    }
    
    func add(value: String) {
        guard children[value] == nil else {
            return
        }
        children[value] = TrieNode2(value: value, parentNode: self)
    }
}

class Trie2 {
    typealias Node = TrieNode2
    
    fileprivate let root: Node
    fileprivate var wordCount: Int
    
    public var count: Int {
        return wordCount
    }

    public var isEmpty: Bool {
        return wordCount == 0
    }
    
    init() {
        root = Node()
        wordCount = 0
    }
}

extension Trie2 {
    
    func insert(info: [String]) {
        guard !info.isEmpty else {
            return
        }
        
        var currentNode = root
        
        for word in info {
            if let childNode = currentNode.children[word] {
                currentNode = childNode
            } else {
                currentNode.add(value: word)
                currentNode = currentNode.children[word]!
            }
        }
        
        guard !currentNode.isTerminating else {
            return
        }
        wordCount += 1
        currentNode.isTerminating = true
    }
    
    func printAllNode(rootNode: Node, depth: Int) {
        var depthString = ""
        for _ in stride(from: 2, through: depth, by: 1) {
            // root를 depth 0, 1층을 depth 1로 정의. 2층부터 --를 출력한다.
            depthString += "--"
        }
        
        if rootNode.value != nil {
            print(depthString + rootNode.value!)
        }
        
        for next in rootNode.children.values.sorted(by: { $0.value ?? "" < $1.value ?? "" }) {
            // 사전 순서대로 출력을 하기 위해 정렬
            printAllNode(rootNode: next, depth: depth + 1)
        }
    }
}

let N = Int(readLine()!)!
let trie: Trie2 = .init()

for _ in 0..<N {
    var line = readLine()!.split(separator: " ").map { String($0) }
    line.removeFirst()
    trie.insert(info: line)
}

trie.printAllNode(rootNode: trie.root, depth: 0)
*/
