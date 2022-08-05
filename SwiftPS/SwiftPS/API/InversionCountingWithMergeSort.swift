//
//  InversionCountingWithMergeSort.swift
//  Algorithm
//
//  Created by kakao on 2021/08/10.
//
// i > j인 i, j에 대해 arr[i] > arr[j]의 개수를 찾는다. O(NlogN)

/*
func mergeSort(_ left: Int, _ right: Int) {
    if left == right { return }
    
    let mid = (left + right) / 2
    
    mergeSort(left, mid)
    mergeSort(mid + 1, right)
    merge(left, mid, right)
}

func merge(_ left: Int, _ mid: Int, _ right: Int) {
    var x = left, y = mid + 1
    
    for i in 0...right-left {
        if x > mid {
            temp[i] = arr[y]
            y += 1
        } else if y > right {
            temp[i] = arr[x]
            x += 1
        } else {
            if arr[x] > arr[y] {
                inversionCount += (mid - x + 1)
                temp[i] = arr[y]
                y += 1
            } else {
                temp[i] = arr[x]
                x += 1
            }
        }
    }
    
    for i in 0...right-left {
        arr[left + i] = temp[i]
    }
}
*/
