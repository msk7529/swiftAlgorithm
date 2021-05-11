//
//  RelationBetweenCircles.swift
//  Algorithm
//
//  Created by kakao on 2021/05/12.
//
import Foundation

struct Circle {
    let x: Int
    let y: Int
    let r: Int
}

func numberOfIntersectionPointBetweenCircles(_ c1: Circle, _ c2: Circle) -> Int {
    // 두 원의 위치관계를 파악하고 교점의 개수를 출력한다.
    if c1.x == c2.x && c1.y == c2.y {
        // 중심이 같은 경우. 동심원
        if c1.r == c2.r {
            return -1     // 두 원이 같다. 즉, 접점이 무제한
        } else {
            return 0      // 동심원인데 반지름이 다르면 접점이 없다.
        }
    } else {
        let distOfCenter: Int = (c1.x - c2.x) * (c1.x - c2.x) + (c1.y - c2.y) * (c1.y - c2.y)   // 두 원의 중심간의 거리
        if distOfCenter == (c1.r - c2.r) * (c1.r - c2.r) {
            // 두 원이 내접한다.
            return 1
        } else if distOfCenter == (c1.r + c2.r) * (c1.r + c2.r) {
            // 두 원이 외접한다.
            return 1
        } else if distOfCenter > (c1.r - c2.r) * (c1.r - c2.r) && distOfCenter < (c1.r + c2.r) * (c1.r + c2.r) {
            // 두 원이 서로 다른 두 점에서 만난다.
            return 2
        } else if distOfCenter > (c1.r + c2.r) * (c1.r + c2.r) {
            // 두 원은 서로 밖에 있으며 만나지 않는다.
            return 0
        } else if distOfCenter < (c1.r - c2.r) * (c1.r - c2.r) {
            // 두 원 중 하나가 다른 하나를 내부에 포함하며 만나지 않는다.
            return 0
        }
    }
    return -1   // 이 경우는 없다.
}
