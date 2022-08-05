//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/10/20.
//
/*
class TreeNode {
    var char: String
    var leftChiid: TreeNode?
    var rightChild: TreeNode?
    
    init(_ c: String, _ left: TreeNode?, _ right: TreeNode?) {
        self.char = c
        self.leftChiid = left
        self.rightChild = right
    }
}

let N = Int(readLine()!)!
var nodes: [TreeNode] = []
var resultPreOrder: [String] = []
var resultInOrder: [String] = []
var resultPostOrder: [String] = []

for i in 0..<N {
    let char = String(UnicodeScalar(i + 65)!)
    nodes.append(TreeNode(char, nil, nil))
}

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Character(String($0)).asciiValue! }.map { Int($0) - 65 }
    // "."의 아스키코드값은 46
    if line[1] >= 0 {
        nodes[line[0]].leftChiid = nodes[line[1]]
    }
    if line[2] >= 0 {
        nodes[line[0]].rightChild = nodes[line[2]]
    }
}

let root = nodes[0]

func preOrder(curr: TreeNode?) {
    guard let curr = curr else { return }
    
    resultPreOrder.append(String(curr.char))
    
    preOrder(curr: curr.leftChiid)
    preOrder(curr: curr.rightChild)
}

func inOrder(curr: TreeNode?) {
    guard let curr = curr else { return }
    
    inOrder(curr: curr.leftChiid)
    
    resultInOrder.append(String(curr.char))
    
    inOrder(curr: curr.rightChild)
}

func postOrder(curr: TreeNode?) {
    guard let curr = curr else { return }
    
    postOrder(curr: curr.leftChiid)
    postOrder(curr: curr.rightChild)
    
    resultPostOrder.append(String(curr.char))
}

preOrder(curr: root)
inOrder(curr: root)
postOrder(curr: root)

print(resultPreOrder.joined())
print(resultInOrder.joined())
print(resultPostOrder.joined())
*/
