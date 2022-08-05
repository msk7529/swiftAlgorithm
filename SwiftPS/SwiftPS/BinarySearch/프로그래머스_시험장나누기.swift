//
//  main.swift
//  Algorithm
//
//  Created by MinSeop on 2021/08/07.
//
/*
var K: Int = 0
var N: Int = 0
var root: Int = 0
var people: [Int] = []
var leftChild: [Int] = []   // leftChild[i]: i의 왼쪽 자식노드
var rightChild: [Int] = []  // rightChild[i]: i의 오른쪽 자식노드
var parent: [Int] = []      // parent[i]: i의 부모노드
var isPossible: Bool = true // 트리들을 최대 mid의 그룹인원으로 나눌 수 있는지 여부
var devideCnt: Int = 0      // 현재의 탐색에서, 트리를 최대 mid의 그룹인원으로 나눌때 나누는 횟수
var left: Int = 1
var right: Int = .max
var result: Int = .max

func solution(_ k:Int, _ num:[Int], _ links:[[Int]]) -> Int {
    K = k
    people = num
    N = num.count
    right = num.reduce(0, +)
    
    leftChild = Array(repeating: -1, count: N)
    rightChild = Array(repeating: -1, count: N)
    parent = Array(repeating: -1, count: N)
    
    makeTree(links)
    binarySearch()

    return result
}

func makeTree(_ links: [[Int]]) {
    for i in 0..<N {
        let lc = links[i][0]
        let rc = links[i][1]
        
        // i노드의 자식노드들을 설정해준다.
        leftChild[i] = lc
        rightChild[i] = rc
        
        // 자식노드들의 부모노드를 설정해준다.
        if lc != -1 {
            parent[lc] = i
        }
        if rc != -1 {
            parent[rc] = i
        }
    }
    
    root = parent.firstIndex(where: { $0 == -1 })!  // 부모노드가 -1이면 루트노드이다.
}

func binarySearch() {
    // 트리를 그룹인원 합이 mid 이하가 되도록 서브트리를 나누었을 때, 나눈 서브트리의 갯수가 K개 이하가 되는가?
    while right >= left {
        devideCnt = 0
        isPossible = true
        
        let mid = (left + right) / 2
        let _ = dfs(curr: root, mid: mid)
        
        if isPossible && devideCnt < K {    // 부등호에 주의. 나누어진 그룹의 갯수는 devideCnt + 1이다.
            result = min(result, mid)
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
}

func dfs(curr: Int, mid: Int) -> Int {
    // 현재노드가 유효하지 않거나, 이미 mid값으로 서브트리를 나누는것이 불가능하면 0 리턴
    if curr == -1 || !isPossible { return 0 }
    
    if people[curr] > mid {
        // curr노드 만으로도 서브트리의 인원수를 mid이하로 만드는 것이 불가능하므로 mid를 다시 설정해야 한다.
        isPossible = false
        return 0
    }
    
    let leftSum = dfs(curr: leftChild[curr], mid: mid)      // 왼쪽 서브트리의 합
    let rightSum = dfs(curr: rightChild[curr], mid: mid)    // 오른쪽 서브트리의 합
    
    if people[curr] + leftSum + rightSum <= mid {
        // 자기자신을 포함하여 두 서브트리를 모두 합치더라도 합이 mid이하인 경우. 트리를 나눌 필요가 없다.
        return people[curr] + leftSum + rightSum
    } else if people[curr] + leftSum <= mid && people[curr] + rightSum > mid {
        // 왼쪽 서브트리만 합쳤을 때 합이 mid이하인 경우. 오른쪽 서브트리는 버린다.
        devideCnt += 1
        return people[curr] + leftSum
    } else if people[curr] + leftSum > mid && people[curr] + rightSum <= mid {
        // 오른쪽 서브트리만 합쳤을 때 합이 mid이하인 경우. 왼쪽 서브트리는 버린다.
        devideCnt += 1
        return people[curr] + rightSum
    } else if people[curr] + leftSum <= mid && people[curr] + rightSum <= mid {
        // 두 서브트리를 모두 합칠수는 없지만, 어느 하나만 합쳤을때는 합이 mid이하인 경우.
        // 상대적으로 더 작은 값을 가지는 서브트리를 합친다.
        devideCnt += 1
        return people[curr] + min(leftSum, rightSum)
    } else if people[curr] + leftSum > mid && people[curr] + rightSum > mid {
        // 두 서브트리 중 어느것도 합쳐도 합이 mid를 초과하는 경우. 두 서브트리 모두 버린다.
        devideCnt += 2
        return people[curr]
    }
    
    return 0
}

//print(solution(3, [12, 30, 1, 8, 8, 6, 20, 7, 5, 10, 4, 1], [[-1, -1], [-1, -1], [-1, -1], [-1, -1], [8, 5], [2, 10], [3, 0], [6, 1], [11, -1], [7, 4], [-1, -1], [-1, -1]]))
*/
