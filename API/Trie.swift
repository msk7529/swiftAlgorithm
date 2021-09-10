//
//  Trie.swift
//  Algorithm
//
//  Created by Minseop on 2021/09/04.
//
// https://the-brain-of-sic2.tistory.com/40

class TrieNode<T: Hashable> {
    
    var value: T?                       // The value that goes into the node
    weak var parentNode: TrieNode?      // 부모노드.  부모와 자신이 서로 참조하고 있기 떄문에 강한 참조가 발생할 수 있으므로 weak로 선언
    var children: [T: TrieNode] = [:]   // 이진트리와 다르게 자식 노드가 많을 수 있으므로 사전으로 정의
    var isTerminating = false           // 한 단어의 끝을 표시하는 용도.
    var count: Int = 0
    
    var isLeaf: Bool {
        return children.count == 0
    }
    
    init(value: T? = nil, parentNode: TrieNode? = nil) {
        self.value = value
        self.parentNode = parentNode
    }
    
    // Adds a child node to self.  If the child is already present, do nothing.
    func add(value: T) {
        guard children[value] == nil else {
            return
        }
        children[value] = TrieNode(value: value, parentNode: self)
    }
}

// A trie data structure containing words.  Each node is a single character of a word.
class Trie {
    // 트라이(Prefix tree, digital search tree, retrieval tree)
    typealias Node = TrieNode<Character>
    
    fileprivate let root: Node
    fileprivate var wordCount: Int
    
    // The number of words in the trie
    public var count: Int {
        return wordCount
    }

    public var isEmpty: Bool {
        return wordCount == 0
    }
    
    // All words currently in the trie
    public var words: [String] {
        return wordsInSubtrie(rootNode: root, partialWord: "")
    }
    
    // Creates an empty trie.
    init() {
        root = Node()
        wordCount = 0
    }
}

// MARK: - Adds methods: insert, remove, contains
extension Trie {
    
    // Inserts a word into the trie.  If the word is already present, there is no change.
    func insert(word: String) {     // O(L)
        guard !word.isEmpty else { return }
        
        var currentNode = root
        
        for char in word {
            currentNode.count += 1
            
            if let childNode = currentNode.children[char] {
                currentNode = childNode
            } else {
                currentNode.add(value: char)
                currentNode = currentNode.children[char]!
            }
        }
        
        // Word already present?
        guard !currentNode.isTerminating else { return }
        
        wordCount += 1
        currentNode.isTerminating = true
    }
    
    func childCountWithPrefix(with prefix: String) -> Int {
        // prefix를 접두사로 하는 문자열의 개수를 구한다.
        guard !prefix.isEmpty else { return 0 }
        
        var currentNode = root
        
        for char in prefix {
            guard let childNode = currentNode.children[char] else {
                return 0
            }
            currentNode = childNode
        }
        return currentNode.children.count
    }
    
    func childCount(word: String, breakChar: Character = " ") -> Int {
        // Trie에서 word를 검색한다. 이 때 word의 문자중 breakChar이 존재하면 그 전까지의 문자열을 prefix로 갖는 문자열의 개수를 구한다.
        // ex: word: "abc??", breakChar: "?" --> Trie에서 "abc"를 접두사로 갖는 문자열의 개수를 리턴.
        guard !word.isEmpty else { return 0 }
        
        var currentNode = root
        
        for char in word {
            if char == breakChar {
                return currentNode.count
            }
            
            guard let childNode = currentNode.children[char] else { return 0 }
            
            currentNode = childNode
        }
        return currentNode.children.count
    }
    
    func contains(word: String, matchPrefix: Bool = false) -> Bool {     // O(L)
        // Trie에서 word가 존재하는지 찾는다. matchPrefix를 true로 주면 꼭 매칭되지 않더라도 word를 접두사로 하는 단어가 존재하면 true를 반환한다.
        guard !word.isEmpty else { return false }
        
        var currentNode = root
        
        for char in word {
            guard let childNode = currentNode.children[char] else {
                return false
            }
            currentNode = childNode
        }
        return matchPrefix || currentNode.isTerminating
    }
    
    private func findLastNodeOf(word: String) -> Node? {
        // Attempts to walk to the last node of a word. The search will fail if the word is not present.
        // Doesn't check if the node is terminating
        // return the node where the search ended, nil if the search failed.
        var currentNode = root
        
        for character in word {
            guard let childNode = currentNode.children[character] else {
                return nil
            }
            currentNode = childNode
        }
        return currentNode
    }
    
    // Attempts to walk to the terminating node of a word. The search will fail if the word is not present.
    private func findTerminalNodeOf(word: String) -> Node? {
        // the node where the search ended, nil if the search failed.
        if let lastNode = findLastNodeOf(word: word) {
            return lastNode.isTerminating ? lastNode : nil
        }
        return nil
    }
    
    private func deleteNodesForWordEndingWith(terminalNode: Node) {
        // terminalNode: the node representing the last node of a word
        // Deletes a word from the trie by starting with the last letter and moving back, deleting nodes until either a non-leaf or a terminating node is found.
        var lastNode = terminalNode
        var character = lastNode.value
        
        while lastNode.isLeaf, let parentNode = lastNode.parentNode {
            lastNode = parentNode
            lastNode.children[character!] = nil
            character = lastNode.value
            if lastNode.isTerminating {
                break
            }
        }
    }

    func remove(word: String) {     // O(L)
        // Removes a word from the trie.  If the word is not present or it is empty, just ignore it.  If the last node is a leaf, delete that node and higher nodes that are leaves until a terminating node or non-leaf is found.
        // If the last node of the word has more children, the word is part of other words.
        // Mark the last node as non-terminating.
        
        guard !word.isEmpty else {
            return
        }
        
        guard let terminalNode = findTerminalNodeOf(word: word) else {
            return
        }
        
        if terminalNode.isLeaf {
            deleteNodesForWordEndingWith(terminalNode: terminalNode)
        } else {
            terminalNode.isTerminating = false
        }
        wordCount -= 1
    }
    
    fileprivate func wordsInSubtrie(rootNode: Node, partialWord: String) -> [String] {
        // rootNode: the root node of the subtrie
        // partialWord: the letters collected by traversing to this node
        var subtrieWords = [String]()
        var previousLetters = partialWord
        
        if let value = rootNode.value {
            previousLetters.append(value)
        }
        
        if rootNode.isTerminating {
            subtrieWords.append(previousLetters)
        }
        
        for childNode in rootNode.children.values {
            let childWords = wordsInSubtrie(rootNode: childNode, partialWord: previousLetters)
            subtrieWords += childWords
        }
        return subtrieWords     // the words in the subtrie
    }
    
    func findWordsWithPrefix(prefix: String) -> [String] {
        // Returns an array of words in a subtrie of the trie that start with given prefix
        var words = [String]()
        let prefixLowerCased = prefix
        
        if let lastNode = findLastNodeOf(word: prefixLowerCased) {
            if lastNode.isTerminating {
                words.append(prefixLowerCased)
            }
            
            for childNode in lastNode.children.values {
                let childWords = wordsInSubtrie(rootNode: childNode, partialWord: prefixLowerCased)
                words += childWords
            }
        }
        return words
    }
}

